<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // ================================
    // F1 DRIVER DATA
    // ================================

    String[] drivers = {
        "Max Verstappen",
        "Lando Norris",
        "Charles Leclerc",
        "Lewis Hamilton",
        "Oscar Piastri"
    };

    String[] teams = {
        "Red Bull Racing",
        "McLaren",
        "Ferrari",
        "Ferrari",
        "McLaren"
    };

    int[] points = {
        395,
        378,
        312,
        285,
        274
    };

    int[] wins = {
        8,
        5,
        3,
        2,
        3
    };

    // ================================
    // F1 STATISTICS
    // ================================

    int totalDrivers = 20;
    int totalTeams = 10;
    int totalRaces = 24;

    String leadingDriver = drivers[0];
    String leadingTeam = teams[0];

    // Calculate total points
    int totalPoints = 0;

    for (int i = 0; i < points.length; i++) {
        totalPoints += points[i];
    }

    // Find driver with maximum wins
    int maxWins = wins[0];
    String mostWinsDriver = drivers[0];

    for (int i = 1; i < wins.length; i++) {
        if (wins[i] > maxWins) {
            maxWins = wins[i];
            mostWinsDriver = drivers[i];
        }
    }
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>F1 Management & Analysis</title>

    <link rel="stylesheet" href="style.css">

</head>

<body>

    <!-- ================= HEADER ================= -->

    <header>

        <div class="logo">
            🏎️ F1 APEX
        </div>

        <nav>
            <a href="#dashboard">Dashboard</a>
            <a href="#drivers">Drivers</a>
            <a href="#teams">Teams</a>
            <a href="#analysis">Analysis</a>
        </nav>

    </header>


    <!-- ================= HERO SECTION ================= -->

    <section class="hero">

        <div class="hero-content">

            <h1>F1 Management & Analysis</h1>

            <p>
                Formula 1 Driver, Team and Championship
                Performance Management System
            </p>

            <a href="#drivers" class="button">
                View Driver Standings
            </a>

        </div>

    </section>


    <!-- ================= DASHBOARD ================= -->

    <section id="dashboard" class="container">

        <h2>F1 Dashboard</h2>

        <div class="stats">

            <div class="stat-card">

                <h3><%= totalDrivers %></h3>

                <p>Drivers</p>

            </div>


            <div class="stat-card">

                <h3><%= totalTeams %></h3>

                <p>Teams</p>

            </div>


            <div class="stat-card">

                <h3><%= totalRaces %></h3>

                <p>Races</p>

            </div>


            <div class="stat-card">

                <h3><%= totalPoints %></h3>

                <p>Tracked Points</p>

            </div>

        </div>

    </section>


    <!-- ================= DRIVER STANDINGS ================= -->

    <section id="drivers" class="container">

        <h2>Driver Standings</h2>

        <div class="table-container">

            <table>

                <tr>

                    <th>Position</th>
                    <th>Driver</th>
                    <th>Team</th>
                    <th>Points</th>
                    <th>Wins</th>

                </tr>


                <%
                    for (int i = 0; i < drivers.length; i++) {
                %>

                <tr>

                    <td>
                        <%= i + 1 %>
                    </td>

                    <td>
                        <strong>
                            <%= drivers[i] %>
                        </strong>
                    </td>

                    <td>
                        <%= teams[i] %>
                    </td>

                    <td class="points">
                        <%= points[i] %>
                    </td>

                    <td>
                        <%= wins[i] %>
                    </td>

                </tr>

                <%
                    }
                %>

            </table>

        </div>

    </section>


    <!-- ================= TEAM SECTION ================= -->

    <section id="teams" class="container">

        <h2>F1 Teams</h2>

        <div class="team-grid">

            <div class="team-card">

                <h3>🔴 Ferrari</h3>

                <p>
                    Drivers: Charles Leclerc,
                    Lewis Hamilton
                </p>

                <p>
                    Championship:
                    <strong>Competitive</strong>
                </p>

            </div>


            <div class="team-card">

                <h3>🟠 McLaren</h3>

                <p>
                    Drivers: Lando Norris,
                    Oscar Piastri
                </p>

                <p>
                    Championship:
                    <strong>Strong Performance</strong>
                </p>

            </div>


            <div class="team-card">

                <h3>🔵 Red Bull Racing</h3>

                <p>
                    Driver: Max Verstappen
                </p>

                <p>
                    Championship:
                    <strong>Leading Driver</strong>
                </p>

            </div>


            <div class="team-card">

                <h3>🟢 Aston Martin</h3>

                <p>
                    Drivers: Fernando Alonso,
                    Lance Stroll
                </p>

                <p>
                    Championship:
                    <strong>Development</strong>
                </p>

            </div>

        </div>

    </section>


    <!-- ================= ANALYSIS ================= -->

    <section id="analysis" class="container">

        <h2>Performance Analysis</h2>


        <div class="analysis-box">

            <h3>🏆 Championship Leader</h3>

            <p>

                The current championship leader in the
                dataset is

                <strong>
                    <%= leadingDriver %>
                </strong>

                representing

                <strong>
                    <%= leadingTeam %>
                </strong>.

            </p>

        </div>


        <div class="analysis-box">

            <h3>🏁 Most Race Wins</h3>

            <p>

                <strong>
                    <%= mostWinsDriver %>
                </strong>

                has the highest number of wins in the
                selected dataset with

                <strong>
                    <%= maxWins %>
                </strong>

                victories.

            </p>

        </div>


        <div class="analysis-box">

            <h3>📊 Championship Points</h3>

            <p>

                The system currently tracks

                <strong>
                    <%= totalPoints %>
                </strong>

                championship points for the displayed
                drivers.

            </p>

        </div>

    </section>


    <!-- ================= JSP DEMONSTRATION ================= -->

    <section class="container jsp-demo">

        <h2>JSP Demonstration</h2>

        <p>
            This section demonstrates dynamic content
            generated using JSP and Java.
        </p>

        <p>
            Current Driver:
            <strong>
                <%= leadingDriver %>
            </strong>
        </p>

        <p>
            Current Team:
            <strong>
                <%= leadingTeam %>
            </strong>
        </p>

        <p>
            Championship Points:
            <strong>
                <%= points[0] %>
            </strong>
        </p>

    </section>


    <!-- ================= FOOTER ================= -->

    <footer>

        <h3>F1 Management & Analysis</h3>

        <p>
            JSP Lab 9 & 10 Project
        </p>

        <p>
            Formula 1 Management System
        </p>

    </footer>

</body>

</html>