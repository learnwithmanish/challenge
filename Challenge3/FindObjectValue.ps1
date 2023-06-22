function FindValue($object, $key)
{
    $key1,$key2 = $key.Split(".")
    if($key2)
     { 
        return FindValue -object $object.$key1 -key $key2
    
    }
    else { 
        return $object.$key1
     }
}
