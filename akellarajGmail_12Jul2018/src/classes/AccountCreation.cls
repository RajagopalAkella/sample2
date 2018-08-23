//Added comment before commit3
//Added one more comment
//For ignore 2
<<<<<<< HEAD
//For ignore 4 
//For getback4
=======
//For ignore 5
//For getback
>>>>>>> refs/heads/getBack
public class AccountCreation {
    public set<string> fetchAccPhone(string s){
        list<string> p1 = new list<string>();
        p1.add(s);
        list<account> la = [select Id, Name, Phone from Account where Phone = :s];
        set<string> s1 = new set<string>();
        for (Account a:la){
          s1.add(a.name);                
        }        
        return s1;
    }
    public Account InsertAccount(string acName, string acPhone){
        list<Account> la = [select Id, Name from Account where Name = :acName];
        if (la.size() != 0 ){
            system.debug('Account already exists.');
            return null;
        }
        Account a = new Account();
        a.Name = acName;
      	a.Phone = acPhone;
        insert a;
        return a;
    }
}