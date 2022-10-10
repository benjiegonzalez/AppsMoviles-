package com.example.diceroller1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView

/**  Esta actividad permite al usuario tirar un dado y ver el resultado  en la pantalla. */
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val rollButton: Button = findViewById(R.id.button)
        rollButton.setOnClickListener { rollDice() }

        // Do a dice roll when the app starts
        rollDice()
    }

    /** * Tira los dados y actualiza la pantalla con el resultado. */
    private fun rollDice() {
        // Crea un nuevo objeto Dice con 6 lados y hazlo rodar
        val dice = Dice(6)
        val diceRoll = dice.roll()
        // Encuentra el ImageView en el diseño
        val diceImage: ImageView = findViewById(R.id.imageView)
        // Determine qué ID de recurso dibujable usar en función de la tirada de dados
        val drawableResource = when (diceRoll) {
            1 -> R.drawable.dice_1
            2 -> R.drawable.dice_2
            3 -> R.drawable.dice_3
            4 -> R.drawable.dice_4
            5 -> R.drawable.dice_5
            else -> R.drawable.dice_6
        }
        // Actualizar ImageView con el ID de recurso dibujable correcto
        diceImage.setImageResource(drawableResource)
        // Actualizar la descripción del contenido
        diceImage.contentDescription = diceRoll.toString()
    }
}

class Dice(private val numSides: Int) {

    fun roll(): Int {
        return (1..numSides).random()
    }
}