import UIKit

var h = HashTable<String, Any>(bucketSize: 13)
h["foma"] = "gran"
h["gran"] = "foma"

print(h["foma"],h["gran"],h["fomagran"])
