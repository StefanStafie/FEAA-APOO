# Internship Management System — FEAA APOO

A university project for the **Object-Oriented Analysis and Design** (Analiza și Proiectarea Orientată pe Obiecte) course at the **Faculty of Economics and Business Administration** (Facultatea de Economie și Administrarea Afacerilor).

The system models the full lifecycle of internship programmes — from managing interns and mentors to tracking tasks, teams, and equipment assignments.

---

## 📋 Overview

The application is designed around a layered architecture (Presentation → Controller → Data Layer) and covers the following main entities:

| Entity | Romanian | Description |
|---|---|---|
| Interns | Stagiari | People participating in internships |
| Internships | Internship | Internship positions with start/end dates and status |
| Activities / Tasks | Activități | Work items assigned to an internship |
| Teams | Echipe | Groups of interns collaborating on an internship |
| Equipment | Echipamente | Hardware/devices assigned to interns |
| Mentors | Mentori | Employees who guide interns within a department |

---

## 🗄️ Database Schema

The PostgreSQL schema lives in the `"Proiect APOO"` schema and contains the following tables:

- **stagiari** — intern profiles (name, email, role, expertise, domain)
- **internship** — internship records (position, paid/unpaid, weekly hours, dates, status)
- **activitati** — tasks linked to internships (description, estimated hours, deadlines, status)
- **legaturi_echipe** — many-to-many join table linking interns to teams
- **echipamente** — equipment items assigned to interns (serial number, type)
- **mentori** — mentors linked to internships and departments

To set up the database, run the provided SQL script:

```bash
psql -U postgres -f "Create Script internships APOO.sql"
```

![Database Diagram](Proiect%20APOO.png)

---

## 🏗️ Architecture

The project follows a three-layer architecture:

```
Presentation Layer   ←→   Controller Layer   ←→   Data Layer
```

Relevant diagrams are in the `Visual Paradigm/` folder:

| Diagram | File |
|---|---|
| Presentation Layer | `Presentation.png`, `Presentation_Internships.png`, etc. |
| Data Layer Class Diagram | `DataLayer/ClassDiagramDataLayer.jpg` |
| Reference Architecture | `Arhitectura de referinta.jpg` |
| Layer Interactions | `Interactiuni intre straturile arhitecturii.jpg` |

---

## 📐 UML Diagrams

All UML diagrams were created with [Visual Paradigm](https://www.visual-paradigm.com/) and are exported to the `Visual Paradigm/` folder.

### Use Case Diagrams

| Use Case | Preview |
|---|---|
| Internships | `UCInternships.png` |
| Tasks / Activities | `UCTasks.png` |
| Teams | `UCTeam.png` |
| Equipment | `UCEquipment.png` |

### State Diagrams

| Entity | File |
|---|---|
| Internship | `StateDiagram/InternshipStateDiagram.jpg` |
| Task | `StateDiagram/TaskStateDiagram .jpg` |
| Team | `StateDiagram/TeamStateDiagram.jpg` |

### Sequence Diagrams

Six sequence diagrams (`secventa - UC1.png` through `secventa - UC6.png`) illustrate the main use-case flows.

### Activity Diagrams

| Flow | File |
|---|---|
| General activity flow | `diagrama activitai.png` |
| Add Equipment | `diagrama activitati adauga echipament.png` |
| Add Internship | `diagrama activitati adauga internship.png` |
| Modify Internship | `diagrama activitati modifica internship.png` |

---

## 📁 Repository Structure

```
FEAA-APOO/
├── Create Script internships APOO.sql   # PostgreSQL DDL script
├── Proiect APOO.png                     # Database ER diagram
├── Proiect_UML.docx                     # UML project documentation
└── Visual Paradigm/                     # All UML diagrams & VP project files
    ├── DataLayer/                       # Class diagram for the data layer
    ├── StateDiagram/                    # State diagrams (Internship, Task, Team)
    ├── UseCaseDiagramPNG/               # Exported use case diagrams
    └── visualParadigmProject.vpp        # Visual Paradigm project file
```

---

## 🛠️ Technologies

- **Database:** PostgreSQL
- **Modeling:** Visual Paradigm (UML 2.x)
- **Documentation:** Microsoft Word (`.docx`)

---

## 📄 License

This project was created for academic purposes as part of the APOO coursework at FEAA.
