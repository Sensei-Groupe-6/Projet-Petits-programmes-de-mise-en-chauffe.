#!/usr/bin/env ruby

# Description projet : 
# Algorithme de chiffrement d'une caractere(lettre) et des textes,
# par le chiffrement decalage avec le code ASCII 

# Function : encryption of a text
  
  def caesar_cipher(string,arg)
    string.split('').map{|i| cipher_letter(i,arg)}.join('') 
  end

# Function : encryption of a letter
  
  def cipher_letter(letter,arg)
    # .ord >>> Conversion ASCII (ISO-8859-1)
    if (letter.ord).between?(97,122) || (letter.ord).between?(65,90)  # (97,122) : tiny , (65,90) : uppercase
      # Right decalage
      if arg > 0 && arg.is_a?(Integer)
        # back to square one
        if (letter.ord)+arg > 122 && (letter.ord).between?(97,122) || (letter.ord)+arg > 90 && (letter.ord).between?(65,90)
          (((letter.ord)+arg)-26).chr
        else 
          ((letter.ord)+arg).chr
        end

      # Left decalage
      elsif arg < 0  && arg.is_a?(Integer)
        if (letter.ord)+arg < 97 && (letter.ord).between?(97,122) || (letter.ord)+arg < 65 && (letter.ord).between?(65,90)
          (((letter.ord)+arg)+26).chr
        else 
          ((letter.ord)+arg).chr
        end
      end

      # other codage letter in ASCII
    else 
      return letter
    end
  end
