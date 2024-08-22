
var HashMap = function() {
    let obj={};
    return {
        put: function(k,v) {
          obj[k]=v;
        },
        keys: function() {
            const ar1 = [];
            for(let key in obj){
                ar1.push(key);
               
            }return ar1;
            
        },
        contains: function(key) {
            for(const kk in obj)
           
                if(kk === key){
                     return true;
    
                }else{
                    return false;
                }
                
        },
        get: function(key) {
            return obj[key];
            
        },
        clear: function() {
          obj={};
        }
    };
};