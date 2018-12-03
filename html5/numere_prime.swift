import Foundation

class t_set_of_primes{
    var primes: Set<Int>

    init(){
        primes = []
    }

    init(_ x: Int){
        primes = [x]
    }

    init(_ x: Int, _ y: Int){
        primes = []
        for i in stride(from: x, to: y + 1, by: 1){
            if is_prime(i){
                primes.insert(i)
            }
        }
    }

    deinit{
        primes = []
    }

    func is_prime(_ x: Int)->Bool
    {
    /*
        var d = 2
        while d < Int(sqrt(Double(x))){
            if x % d == 0{
                return false
            }
            d = d + 1
        }
        return true
    */
        for d in stride(from: 2, through: Int(sqrt(Double(x))), by: 1){
            if x % d == 0{
                return false
            }
        }
        return true
    }

    func add(_ x: Int){
        if is_prime(x){
            primes.insert(x)
        }
    }

    func reuneste(_ a: t_set_of_primes)
    {
        primes = primes.union(a.primes)
    }

    func reuneste2(_ a: t_set_of_primes) -> t_set_of_primes
    {
        let tmp = t_set_of_primes()
        tmp.primes = primes.union(a.primes)
        return tmp
    }

    func intersectie(_ a: t_set_of_primes)
    {
        primes = primes.intersection(a.primes)
    }

    func print_set(){
        var s = "The set is = {"
        for x in primes.sorted(){
            s = s + String(x) + " "
        }
        s = s + "}"
        print(s)
    }
    
    func apartine(_ x: Int)->Bool{
        return primes.contains(x)
    }
    
    func subset(_ x:t_set_of_primes)->Bool{
        return primes.isSubset(of: x.primes)
    }
    
    func nr_elemente()->Int{
        return primes.count
    }
    
    func sterge(_ x:Int){
        primes.remove(x)
    }
}// end class

func +=(lhs: t_set_of_primes, rhs: Int){
    lhs.add(rhs)
}

func <<(lhs: t_set_of_primes, rhs: Int){
    lhs.add(rhs)
}

func +(lhs: t_set_of_primes, rhs: t_set_of_primes)->t_set_of_primes{

    
    let tmp = lhs.reuneste2(rhs)
    return tmp
}

func ==(lhs: t_set_of_primes, rhs: t_set_of_primes)->Bool{
    return lhs.subset(lhs) && lhs.nr_elemente() == rhs.nr_elemente()
}

func -=(lhs: t_set_of_primes, rhs: Int){
    lhs.sterge(rhs)
}


enum teste: String{
   case adauga = "1"
   case constructor_1 = "2"
   case constructor_2 = "3"
   case reuniune = "4"
   case reuniune2 = "5"
   case intersectie = "6"
   case plus_egal = "7"
   case plus = "8"
   case egal_egal = "9"
   case apartine = "10"
   case sterge = "11"
   
        
} 

var test = teste.sterge

    switch test.rawValue{
        case "1": // testam adaugare
            let m = t_set_of_primes()
            m.add(2)
            m.add(3)
            m.add(4)
            m.print_set()
            //fallthrough
        case "2": // testam constructor cu 1 element
            let m = t_set_of_primes(7)
            m.add(2)
            m.add(3)
            m.add(4)
            m.print_set()
        case "3": // testam constructor cu 2 element2
            let m = t_set_of_primes(7, 41)
            m.print_set()
        case "4": // testam reuniune
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(90, 100)
            m.reuneste(x)
            m.print_set()
        case "5": // testam reuniune 2
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(90, 100)
            var y = t_set_of_primes(100, 200)
            y = m.reuneste2(x)
            y.print_set()
        case "6": // testam intersectie
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(30, 100)
            m.intersectie(x)
            m.print_set()
        case "7": // testam +=, <<
            let m = t_set_of_primes(7)
            m += 2
            m << 3
            m << 4
            m.print_set()  
        case "8": // testam reuniune 2
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(90, 100)
            var y = t_set_of_primes(100, 200)
            y = m + x
            y.print_set() 
        case "9": // ==
            let m = t_set_of_primes(7, 41)
            let x = t_set_of_primes(90, 100)
            if m == x{
                print("egale")
            }
            else{
                print("diferite")
            }
        case "10": // testam apartine
            let m = t_set_of_primes(7, 100)  
            let x = 5
            if m.apartine(x){
                print("Apartine")
            }
            else{
                print("Nu apartine")
            }
        case "11": // testam sterge
            let m = t_set_of_primes(7, 41)
            m -= 11
            m.print_set()    
            
        default:
            print("Invalid input")
    }


