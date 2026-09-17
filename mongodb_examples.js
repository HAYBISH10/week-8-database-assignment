// College Management System - MongoDB Example

use college_management;

// Create a collection for flexible student activity data
db.student_activity.insertMany([
    {
        student_id: 1,
        preferences: {
            language: "English",
            notifications: true
        },
        devices: [
            {
                type: "laptop",
                operating_system: "Windows"
            }
        ],
        activities: [
            {
                type: "login",
                date: "2026-09-17"
            }
        ]
    },
    {
        student_id: 2,
        preferences: {
            language: "English",
            notifications: false
        },
        devices: [
            {
                type: "mobile",
                operating_system: "Android"
            }
        ]
    }
]);

// Find student activity
db.student_activity.find({
    student_id: 1
});