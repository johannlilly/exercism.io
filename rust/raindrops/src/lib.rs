/**
 * Determine raindrop's sound
 * @param {u32} n - single raindrop
 * @returns {String} - the sound
 */
pub fn raindrops(n: u32) -> String {
    // unimplemented!("what sound does Raindrop #{} make?", n)
    let mut sound = String::from("");
  
    if n % 3 == 0 { sound += "Pling"; }
    if n % 5 == 0 { sound += "Plang"; }
    if n % 7 == 0 { sound += "Plong"; }
    
    if n%3!=0 && n%5!=0 && n%7!=0 { sound = n.to_string(); }
  
    return sound;
  }