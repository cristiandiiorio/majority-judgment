# Use the official Python 3.8 image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Set the command to run the application
CMD [ "python", "/discord-bot/major_bot.py" ]