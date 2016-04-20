Project.create name: "Ironhack", description: "Ironhack is awesome!"
Project.create name: "Time tracking app"
Project.create name: "Recipes", description: "Track my favorite recipes"
TimeEntry.create project_id: 1, hours: 1, minutes: 0, comment: "Did some awesome stuff" date: Time.now - 5.hours
TimeEntry.create project_id: 3, hours: 2, minutes: 30, comment: "Did even more awesomeness" date: Time.now - 1.day