## Test PS Gui 123 ok
    ##Impoter Assemblys
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing 
    
    ##Laver nyt form object, navngiver det, og sætter gui størrelse
    $MyForm = New-Object System.Windows.Forms.Form
    $MyForm.Text="TEST" 
    $MyForm.Size = New-Object System.Drawing.Size(300,250) 

    ##Laver en TEXT box
        $MaskedTextBox1 = New-Object System.Windows.Forms.MaskedTextBox 
                $MaskedTextBox1.Text=$TEst1 
                $MaskedTextBox1.Top="50" 
                $MaskedTextBox1.Left="120" 
                $MaskedTextBox1.Anchor="Left,Top" 
        $MaskedTextBox1.Size = New-Object System.Drawing.Size(40,30)
        $MaskedTextBox1.Mask = ""

    ##Laver en Knap
        $mButton1 = New-Object System.Windows.Forms.Button 
                $mButton1.Text="JUMP" 
                $mButton1.Top="120" 
                $mButton1.Left="90" 
                $mButton1.Anchor="Left,Top" 
        $mButton1.Size = New-Object System.Drawing.Size(100,30)
    
    ##Adder en Funktion til knappen
        $MyForm.Controls.Add($mButton1) 

    ##Laver et event når knappen trykkes
        $mButton1.Add_Click(
     
        { 
         $String = $MaskedTextBox1.Text
         [System.Windows.Forms.MessageBox]::Show($String)
         $MyForm.Close()
        }
        )

    #Viser GUI
        $MyForm.Controls.Add($MaskedTextBox1)

        $MyForm.Controls.Add($mButton1) 

        $MyForm.ShowDialog()