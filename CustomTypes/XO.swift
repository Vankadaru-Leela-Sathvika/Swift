//X-O Game
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
    func didEnd()->Bool{
        displayBoard()
        if rows.contains(3) || cols.contains(3) || nwDiagonal == 3 || swDiagonal == 3 {
            print("X won")
            self.playerX.wins+=1
            self.playerO.loses+=1
            return true
        }
        else if rows.contains(-3) || cols.contains(-3) || nwDiagonal == -3 || swDiagonal == -3 {
            print("O won")
            self.playerO.wins+=1
            self.playerX.loses+=1
            return true 
        }
        else if(count == 8){
            print("Draw")
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
    
    mutating func mark(val:Int=1){
        self.count+=1
        gameLoop:while(true){
            print("Enter i,j: ",terminator:" ")
            let values = readLine()?.split(separator:" ") ?? []
            let x = Int(values[0])!
            let y = Int(values[1])!
            if(!isMarked(row:x,col:y)){
                self.board[x][y]=val
                self.rows[x]+=val 
                self.cols[y]+=val 
                if(x==y){
                    self.nwDiagonal+=val 
                }
                else if(y==3-x){
                    self.swDiagonal+=val 
                }
                break gameLoop
            }
        }
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
}

class Player{
    let playerName:String
    var gamesPlayed=0
    init(playerName:String){
        self.playerName=playerName
        self.wins=0
        self.loses=0
    }
    var wins:Int{
        didSet{
            print("\(playerName) won another game")
        }
    }
    var loses:Int{
        didSet{
            print("\(playerName) lost another game")
        }
    }
    var winPercentage:Double{
        get{
            return (Double(wins)/Double(gamesPlayed))*100;
        }
    }
    var lossPercentage:Double{
        get{
            return 100-winPercentage
        }
    }
}

class Lobby{
    var player1:Player=Player(playerName:"Player1")
    var player2:Player=Player(playerName:"Player2")
    func play()->Void{
        player1.gamesPlayed+=1
        player2.gamesPlayed+=1
        var game:Game=Game(playerX:player1,playerO:player2)
        var flag=true 
        while(!game.didEnd()){
            if(flag){
                print("\(player1.playerName)'s Turn")
                game.mark()
                flag=false 
            }
            else{
                print("\(player2.playerName)'s Turn")
                game.mark(val:-1)
                flag=true
            }
        }
        printStats()
    }
    func printStats(){
        print("\(player1.playerName) wins: \(player1.wins) loses: \(player1.loses) win Percentage: \(player1.winPercentage)")
        print("\(player2.playerName) wins: \(player2.wins) loses: \(player2.loses) win Percentage: \(player2.winPercentage)")
    }   
}

var lobby=Lobby()
while(true){
    print("New Game")
    print()
    lobby.play()
}
