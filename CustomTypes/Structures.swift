//X-O Game
struct Game{
    var board:[[Int?]]=Array(repeating:Array(repeating:nil,count:3),count:3)
    var rows:[Int]=Array(repeating:0,count:3)
    var cols:[Int]=Array(repeating:0,count:3)
    var nwDiagonal:Int=0
    var swDiagonal:Int=0
    var count=0   

    mutating func didEnd()->Bool{
        displayBoard()
        if rows.contains(3) || cols.contains(3) || nwDiagonal == 3 || swDiagonal == 3 {
            print("X won")
            return true
        }
        else if rows.contains(-3) || cols.contains(-3) || nwDiagonal == -3 || swDiagonal == -3 {
            print("O won")
            return true 
        }
        else if(count == 7){
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

func play()->Void{
    var game:Game=Game()
    var flag=true 
    while(!game.didEnd()){
        if(flag){
            game.mark()
            flag=false 
        }
        else{
            game.mark(val:-1)
            flag=true
        }
    }
}

play()