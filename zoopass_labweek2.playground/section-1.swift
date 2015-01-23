// Playground - noun: a place where people can play

import UIKit

class UserPass {
    var username : [String:String] = ["aa":"aa111","bb":"bb22b","cc":"cc33c","mm":"mm44m"]
   // let password   : [String] = ["aa111","bb22b","cc33c","mm44m"]
    let userpass:String
    
    init(username : String){
        self.userpass = username
    }
    func UserPassWD() -> String {
        var anser: String = ""
        for(key,value)in username{
            if(key==userpass){
                anser = value
            }
        }
        return anser
    }
    func add(uAdd:String,pAdd:String){
        username[uAdd] = pAdd
    }
    func del(uDel:String){
       username[uDel] = nil
    }
    func edit(uEdit:String,pEdit:String){
        username[uEdit] = pEdit
    }
    
}
let User1 = UserPass(username: "bb")
User1.add("mmm", pAdd: "666")
User1.del("cc")
User1.edit("aa", pEdit: "aa111")