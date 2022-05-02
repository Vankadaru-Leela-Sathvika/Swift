//X-O Game
enum XOError: Error{
    case invalidRangeError(row:Int,col:Int)
    case invalidEntryError
    case invalidNumberOfDataError
}
struct Game{
    let playerX:Player
    let playerO:Player
    var board:[[Int?]]=Array(repeating:Array(repeating:nil,count:3),count:3)
    var rows:[Int]=Array(repeating:0,count:3)
    var cols:[Int]=Array(repeating:0,count:3)
    var nwDiagonal:Int=0
    var swDiagonal:Int=0
    var count=0   
    init(playerX: Player , playerO: Player){
        self.playerX=playerX
        self.playerO=playerO
    }
    func endGame(x:Bool=false,o:Bool=false)->Void{
        if x{
            print("X won")
            self.playerX.wins+=1
            self.playerO.loses+=1
        }
        else if o{
            print("O won")
            self.playerO.wins+=1
            self.playerX.loses+=1
        }
        else{
            print("Draw")
        }
        playerX.busy=false 
        playerO.busy=false
    }
    func didEnd()->Bool{
        displayBoard()
        if rows.contains(3) || cols.contains(3) || nwDiagonal == 3 || swDiagonal == 3 {
            endGame(x:true)
            return true
        }
        else if rows.contains(-3) || cols.contains(-3) || nwDiagonal == -3 || swDiagonal == -3 {
            endGame(x:false)
            return true 
        }
        else if(count == 9){
            endGame()
            return true
        }
        return false
    }
    func isMarked(row:Int,col:Int)->Bool{
        if board[row][col] != nil{
            return true 
        }
        return false
    }
    
    mutating func mark(val:Int=1)throws ->Void{
        gameLoop:while(true){
            print("Enter i,j: ",terminator:" ")
            let values = readLine()?.split(separator:" ") ?? []
            guard values.count==2 else{
                throw XOError.invalidNumberOfDataError
            }
            guard let x = Int(values[0]),let y = Int(values[1]) else{
                throw XOError.invalidEntryError
            }
            guard 0<=x && x<=2 && 0<=y && y<=2 else {
                throw XOError.invalidRangeError(row:x,col:y)
            }
            if !isMarked(row:x,col:y){
                self.board[x][y]=val
                self.rows[x]+=val 
                self.cols[y]+=val 
                if(x==y){
                    self.nwDiagonal+=val 
                }
                if(y==3-x-1){
                    self.swDiagonal+=val 
                }
                break gameLoop
            }
        }
        self.count+=1
    }

    func displayBoard()->Void{
        var count=0
        for row in board{
            print("",terminator:"|")
            for element in row{
                if let val=element{
                    if(val==1){
                        print("X",terminator:"|")
                    }
                    else{
                        print("O",terminator:"|")
                    }
                }
                else{
                    print(" ",terminator:"|")
                }
            }
            count+=1
            print()
            if(count<=2){
                print("--------")
            }
        }
        print()
    }
    mutating func play()->Void{
        playerX.gamesPlayed+=1
        playerO.gamesPlayed+=1
        playerX.displayStats()
        playerO.displayStats()
        var flag=true 
        while(!self.didEnd()){
            do{
                if(flag){
                    print("\(playerX.playerName)'s Turn")
                    try self.mark()
                    flag=false 
                }
                else{
                    print("\(playerO.playerName)'s Turn")
                    try self.mark(val:-1)
                    flag=true
                }
            }
            catch XOError.invalidRangeError(let row,let col) {
                print("Enter Correct Position!!\(row,col) are not within range")
            }
            catch XOError.invalidEntryError{
                print(XOError.invalidEntryError)
            }
            catch {
                print("Unexpected Error!!: \(error)")
            }
        }
        print()
    }  
}

class Player{
    let playerName:String
    var gamesPlayed=0
    var busy:Bool=false
    init(playerName:String){
        self.playerName=playerName
        self.wins=0
        self.loses=0
    }
    var wins:Int{
        didSet{
            print("\(playerName) won another game")
            displayStats()
        }
    }
    var loses:Int{
        didSet{
            print("\(playerName) lost another game")
            displayStats()
        }
    }
    var winPercentage:Double{
        get{
            return (Double(wins)/Double(gamesPlayed))*100;
        }
    }
    var lossPercentage:Double{
        get{
            if(loses==0){
                return 0
            }
            return 100-winPercentage
        }
    }
    func displayStats()->Void{
        print("\(self.playerName) wins: \(self.wins) loses: \(self.loses) win Percentage: \(self.winPercentage) Loss Percentage: \(self.lossPercentage)")
    }
    func joinGame()->Void{
        Lobby.waitingList.append(self);
    }
}

class Lobby{
    static var players:[Player]=[]
    static var waitingList:[Player]=[Player(playerName:"Player1"),Player(playerName:"Player2")]
    func newPlayer(){
        //adds player to player list
    }
    func playGame()->Void{
        //tried using concurrency but didn't work due to version needs swift >=5.5
        while(Lobby.waitingList.count>=2){
            let player1:Player=Lobby.waitingList.remove(at:0)
            let player2:Player=Lobby.waitingList.remove(at:0)
            player1.busy=true
            player2.busy=true 
            var game:Game=Game(playerX:player1,playerO:player2)
            game.play()
        }
    }
}

var lobby=Lobby()
lobby.playGame()