from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="jegan",      # Enter your MySQL password
    database="psn_chatbot"
)

cursor = db.cursor()


@app.route("/", methods=["GET", "POST"])
def home():

    answer = ""

    if request.method == "POST":

        question = request.form["question"].lower()

        if "student" in question:

            cursor.execute("SELECT * FROM students")
            data = cursor.fetchall()

            for row in data:
                answer += f"{row[1]} | {row[2]} | Year {row[3]} | {row[4]}<br>"

        elif "course" in question:

            cursor.execute("SELECT * FROM courses")
            data = cursor.fetchall()

            for row in data:
                answer += f"{row[1]} - {row[2]}<br>"

        elif "fee" in question:

            cursor.execute("SELECT * FROM fees")
            data = cursor.fetchall()

            for row in data:
                answer += f"{row[1]} : ₹{row[2]} per year<br>"

        elif "college" in question:

            answer = "Welcome to PSN College of Engineering and Technology."

        else:

            answer = "Sorry! Please ask about students, courses or fees."

    return render_template("index.html", answer=answer)


if __name__ == "__main__":
    app.run(debug=True)
