-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: springdemo
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text,
  `user_id` int(11) NOT NULL,
  `pub_date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `FKpxk2jtysqn41oop7lvxcp6dqq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'ER Model - Basic Concepts','<p>The ER model defines the conceptual view of a database. It works around real-world entities and the associations among them. At view level, the ER model is considered a good option for designing databases.</p><h2>Entity</h2><p>An entity can be a real-world object, either animate or inanimate, that can be easily identifiable. For example, in a school database, students, teachers, classes, and courses offered can be considered as entities. All these entities have some attributes or properties that give them their identity.</p><p>An entity set is a collection of similar types of entities. An entity set may contain entities with attribute sharing similar values. For example, a Students set may contain all the students of a school; likewise a Teachers set may contain all the teachers of a school from all faculties. Entity sets need not be disjoint.</p><h2>Attributes</h2><p>Entities are represented by means of their properties, called <strong>attributes</strong>. All attributes have values. For example, a student entity may have name, class, and age as attributes.</p><p>There exists a domain or range of values that can be assigned to attributes. For example, a student&#39;s name cannot be a numeric value. It has to be alphabetic. A student&#39;s age cannot be negative, etc.</p><h3>Types of Attributes</h3><p><strong>1. Simple attribute</strong> &minus; Simple attributes are atomic values, which cannot be divided further. For example, a student&#39;s phone number is an atomic value of 10 digits.</p><p>2. <strong>Composite attribute</strong> &minus; Composite attributes are made of more than one simple attribute. For example, a student&#39;s complete name may have first_name and last_name.</p><p>3. <strong>Derived attribute</strong> &minus; Derived attributes are the attributes that do not exist in the physical database, but their values are derived from other attributes present in the database. For example, average_salary in a department should not be saved directly in the database, instead it can be derived. For another example, age can be derived from data_of_birth.</p><p>4. <strong>Single-value attribute</strong> &minus; Single-value attributes contain single value. For example &minus; Social_Security_Number.</p><p>5. <strong>Multi-value attribute</strong> &minus; Multi-value attributes may contain more than one values. For example, a person can have more than one phone number, email_address, etc.</p><h3>Entity-Set and Keys</h3><p>Key is an attribute or collection of attributes that uniquely identifies an entity among entity set.</p><p>For example, the roll_number of a student makes him/her identifiable among students.</p><p>1. <strong>Super Key</strong> &minus; A set of attributes (one or more) that collectively identifies an entity in an entity set.</p><p>2. <strong>Candidate Key</strong> &minus; A minimal super key is called a candidate key. An entity set may have more than one candidate key.</p><p><strong>3. Primary Key</strong> &minus; A primary key is one of the candidate keys chosen by the database designer to uniquely identify the entity set.</p><h2>Relationship</h2><p>1. <strong>One-to-one</strong> &minus; One entity from entity set A can be associated with at most one entity of entity set B and vice versa.</p><p><img src=\"https://i.froala.com/download/561c608e993e6e5b38fa56c884f09b19df9cfcbc.png?1508742429\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>2. <strong>One-to-many</strong> &minus; One entity from entity set A can be associated with more than one entities of entity set B however an entity from entity set B, can be associated with at most one entity.</p><p><img src=\"https://i.froala.com/download/d123971511365833690e6eb1fface045091070c8.png?1508742450\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>3. <strong>Many-to-one</strong> &minus; More than one entities from entity set A can be associated with at most one entity of entity set B, however an entity from entity set B can be associated with more than one entity from entity set A.</p><p><img src=\"https://i.froala.com/download/58c54bd801a82245a629684ff68cb109171e8cec.png?1508742466\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>4. <strong>Many-to-many</strong> &minus; One entity from A can be associated with more than one entity from B and vice versa.</p><p><img src=\"https://i.froala.com/download/8c72d3525b9b251bc3c8faa451f65d3eaa0f898c.png?1508742483\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>',3,'2017-10-09','Database'),(2,'Inheritance C++','<p>Inheritance is an important feature of classes; in fact, it is integral to the idea of object oriented programming. Inheritance allows you to create a hierarchy of classes, with various classes of more specific natures inheriting the general aspects of more generalized classes. In this way, it is possible to structure a program starting with abstract ideas that are then implemented by specific classes. For example, you might have a class Animal from which class dog and cat inherent the traits that are general to all animals; at the same time, each of those classes will have attributes specific to the animal dog or cat.</p><p><br></p><p>Inheritance offers many useful features to programmers. The ability, for example, of a variable of a more general class to function as any of the more specific classes which inherit from it, called polymorphism, is handy. For now, we will concentrate on the basic syntax of inheritance. Polymorphism will be covered in its own tutorial.<br><br>Any class can inherit from any other class, but it is not necessarily good practice to use inheritance (put it in the bank rather than go on a vacation). Inheritance should be used when you have a more general class of objects that describes a set of objects. The features of every element of that set (of every object that is also of the more general type) should be reflected in the more general class. This class is called the base class. base classes usually contain functions that all the classes inheriting from it, known as derived classes, will need. base classes should also have all the variables that every derived class would otherwise contain.<br><br>Let us look at an example of how to structure a program with several classes. Take a program used to simulate the interaction between types of organisms, trees, birds, bears, and other creatures coinhabiting a forest. There would likely be several base classes that would then have derived classes specific to individual animal types. In fact, if you know anything about biology, you might wish to structure your classes to take advantage of the biological classification from Kingdom to species, although it would probably be overly complex. Instead, you might have base classes for the animals and the plants. If you wanted to use more base classes (a class can be both a derived of one class and a base of another), you might have classes for flying animals and land animals, and perhaps trees and scrub. Then you would want classes for specific types of animals: pigeons and vultures, bears and lions, and specific types of plants: oak and pine, grass and flower. These are unlikely to live together in the same area, but the idea is essentially there: more specific classes ought to inherit from less specific classes.<br><br>Classes, of course, share data. A derived class has access to most of the functions and variables of the base class. There are, however, ways to keep a derived class from accessing some attributes of its base class. The keywords public, protected, and private are used to control access to information within a class. It is important to remember that public, protected, and private control information both for specific instances of classes and for classes as general data types. Variables and functions designated public are both inheritable by derived classes and accessible to outside functions and code when they are elements of a specific instance of a class. Protected variables are not accessible by functions and code outside the class, but derived classes inherit these functions and variables as part of their own class. Private variables are neither accessible outside the class when it is a specific class nor are available to derived classes. Private variables are useful when you have variables that make sense in the context of large idea.</p><p><br></p><p>The syntax to denote one class as inheriting from another is simple. It looks like the following: class Bear : public Animal, in place of simply the keyword class and then the class name. The &quot;: public <em>base_class_name</em>&quot; is the essential syntax of inheritance; the function of this syntax is that the class will contain all public and protected variables of the base class. Do not confuse the idea of a derived class having access to data members of a base class and specific instances of the derived class possessing data. The data members - variables and functions - possessed by the derived class are specific to the type of class, not to each individual object of that type. So, two different Bear objects, while having the same member variables and functions, may have different information stored in their variables; furthermore, if there is a class Animal with an object, say object BigAnimal, of that type, and not of a more specific type inherited from that class, those two bears will not have access to the data within BigAnimal. They will simply possess variables and functions with the same name and of the same type.&nbsp;</p><p><br></p><p>A quick example of inheritance:</p><p><img src=\"https://i.froala.com/download/7ea7d35da894401f65c225df71b6d2e5d4947f75.png?1508742852\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>A discussion of the keywords public, private, and protected is useful when discussing inheritance. The three keywords are used to control access to functions and variables stored within a class.</p><p><br></p><h4>public:</h4><p>The most open level of <em>data hiding</em> is public. Anything that is public is available to all derived classes of a base class, and the public variables and data for each object of both the base and derived class is accessible by code outside the class. Functions marked public are generally those the class uses to give information to and take information from the outside world; they are typically the interface with the class. The rest of the class should be hidden from the user using private or protected data (This hidden nature and the highly focused nature of classes is known collectively as encapsulation). The syntax for public is:</p><p><img src=\"https://i.froala.com/download/4e44dec3a1add8e597b60cf67a27bd9bc7b8df62.png?1508742892\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br>Everything following is public until the end of the class or another data hiding keyword is used.<br><br>In general, a well-designed class will have no public fields--everything should go through the class&#39;s functions. Functions that retrieve variables are known as &#39;getters&#39; and those that change values are known as &#39;setters&#39;. Since the public part of the class is intended for use by others, it is often sensible to put the public section at the top of the class.</p><p><br></p><h4>protected:</h4><p>Variables and functions marked protected are inherited by derived classes; however, these derived classes hide the data from code outside of any instance of the object. Keep in mind, even if you have another object of the same type as your first object, the second object cannot access a protected variable in the first object. Instead, the second object will have its own variable with the same name - but not necessarily the same data. Protected is a useful level of access control for important aspects to a class that must be passed on without allowing it to be accessed. The syntax is the same as that of public. specifically,</p><p><img src=\"https://i.froala.com/download/72ed3b1266385c834d68ec65992f89e273805c1a.png?1508742931\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><h4>private:</h4><p>Private is the highest level of data-hiding. Not only are the functions and variables marked private not accessible by code outside the specific object in which that data appears, but private variables and functions are not inherited (in the sense that the derived class cannot directly access these variables or functions). The level of data protection afforded by protected is generally more flexible than that of the private level. On the other hand, if you do not wish derived classes to access a method, declaring it private is sensible.</p><p><img src=\"https://i.froala.com/download/969ca067dbb2e8b1e78fb4dc22ae34fe9e5eed2e.png?1508742951\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>',3,'2017-10-10','Database'),(3,'Operating System - Linux','<p>Linux is one of popular version of UNIX operating System. It is open source as its source code is freely available. It is free to use. Linux was designed considering UNIX compatibility. Its functionality list is quite similar to that of UNIX.</p><h2>Components of Linux System</h2><p>Linux Operating System has primarily three components</p><p>1. <strong>Kernel</strong> &minus; Kernel is the core part of Linux. It is responsible for all major activities of this operating system. It consists of various modules and it interacts directly with the underlying hardware. Kernel provides the required abstraction to hide low level hardware details to system or application programs.</p><p>2. <strong>System Library</strong> &minus; System libraries are special functions or programs using which application programs or system utilities accesses Kernel&#39;s features. These libraries implement most of the functionalities of the operating system and do not requires kernel module&#39;s code access rights.</p><p>3. <strong>System Utility</strong> &minus; System Utility programs are responsible to do specialized, individual level tasks.</p><p><img src=\"https://i.froala.com/download/b0ac6d4baf31bf5d6431ffc9f031f27d31d7ecd3.png?1508743145\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br></p><h2>Kernel Mode vs User Mode</h2><p>Kernel component code executes in a special privileged mode called <strong>kernel mode</strong> with full access to all resources of the computer. This code represents a single process, executes in single address space and do not require any context switch and hence is very efficient and fast. Kernel runs each processes and provides system services to processes, provides protected access to hardware to processes.</p><p>Support code which is not required to run in kernel mode is in System Library. User programs and other system programs works in <strong>User Mode</strong> which has no access to system hardware and kernel code. User programs/ utilities use System libraries to access Kernel functions to get system&#39;s low level tasks.</p><h2>Basic Features</h2><p>Following are some of the important features of Linux Operating System.</p><p>1. <strong>Portable</strong> &minus; Portability means software can works on different types of hardware in same way. Linux kernel and application programs supports their installation on any kind of hardware platform.</p><p>2. <strong>Open Source</strong> &minus; Linux source code is freely available and it is community based development project. Multiple teams work in collaboration to enhance the capability of Linux operating system and it is continuously evolving.</p><p>3. <strong>Multi-User</strong> &minus; Linux is a multiuser system means multiple users can access system resources like memory/ ram/ application programs at same time.</p><p>4. <strong>Multiprogramming</strong> &minus; Linux is a multiprogramming system means multiple applications can run at same time.</p><p>5. <strong>Hierarchical File System</strong> &minus; Linux provides a standard file structure in which system files/ user files are arranged.</p><p>6. <strong>Shell</strong> &minus; Linux provides a special interpreter program which can be used to execute commands of the operating system. It can be used to do various types of operations, call application programs. etc.</p><p>7. <strong>Security</strong> &minus; Linux provides user security using authentication features like password protection/ controlled access to specific files/ encryption of data.</p><p>The source is <a href=\"https://www.tutorialspoint.com/operating_system/os_linux.htm\">https://www.tutorialspoint.com/operating_system/os_linux.htm</a></p>',3,'2017-10-12','Database'),(4,'Dynamic Programming','<p>Dynamic programming is basically, recursion plus using common sense. What it means is that recursion allows you to express the value of a function in terms of other values of that function. Where the common sense tells you that if you implement your function in a way that the recursive calls are done in advance, and stored for easy access, it will make your program faster. This is what we call Memoization - it is memorizing the results of some specific states, which can then be later accessed to solve other sub-problems.</p><p><strong>The intuition behind dynamic programming is that we trade space for time</strong>, i.e. to say that instead of calculating all the states taking a lot of time but no space, we take up space to store the results of all the sub-problems to save time later.</p><p>Let&#39;s try to understand this by taking an example of Fibonacci numbers.</p><blockquote><p>Fibonacci (n) = 1; if n = 0<br>Fibonacci (n) = 1; if n = 1<br>Fibonacci (n) = Fibonacci(n-1) + Fibonacci(n-2)</p></blockquote><p>So, the first few numbers in this series will be: <strong>1, 1, 2, 3, 5, 8, 13, 21...</strong> and so on!</p><p>A code for it using pure recursion:</p><p><img src=\"https://i.froala.com/download/b8a2ce0b23fc70f3b2ba32c300a9d69d9ff8bb79.png?1508743542\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><pre>Using Dynamic Programming approach with memoization:</pre><p><img src=\"https://i.froala.com/download/28440f23719af3056b5bcd86cb37393dde916503.png?1508743571\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br></p>',3,'2017-10-15','Database'),(5,'SQL Joins Explained','<h1><span style=\"font-size: 36px;\">Basic SQL Join Types</span></h1><p>There are four basic types of SQL joins: inner, left, right, and full. The easiest and most intuitive way to explain the difference between these four types is by using a Venn diagram, which shows all possible logical relations between data sets.&nbsp;</p><p>Again, it&#39;s important to stress that before you can begin using any join type, you&#39;ll need to extract the data and load it into an RDBMS like Amazon Redshift, where you can query tables from multiple sources. You build that process manually, or you can use an ETL service like <a href=\"https://www.stitchdata.com/features/?utm_source=sqljoin&utm_medium=microsite&utm_campaign=sqljoin-microsite\" target=\"_blank\">Stitch</a>, which automates that process for you.</p><p>Let&rsquo;s say we have two sets of data in our relational database: table A and table B, with some sort of relation specified by primary and foreign keys. The result of joining these tables together can be visually represented by the following diagram:&nbsp;</p><p><img src=\"https://i.froala.com/download/27f9be8d18c025d2bded2d4b3b50b48ea6a4dccd.png?1508743992\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>The extent of the overlap, if any, is determined by how many records in Table A match the records in Table B. Depending on what subset of data we would like to select from the two tables, the four join types can be visualized by highlighting the corresponding sections of the Venn diagram:</p><p><img src=\"https://i.froala.com/download/607e320aed717d4d60998888f831292885a91e57.png?1508744021\" style=\"width: 681px; height: 188.41px;\" class=\"fr-fic fr-dib\"><span style=\"font-size: 36px;\">Examples of SQL Join Types</span></p><p>Let&#39;s use the tables we introduced in the &ldquo;What is a SQL join?&rdquo; section to show examples of these joins in action. The relationship between the two tables is specified by the <span style=\"font-size: 20px; color: red;\">customer_id key,&nbsp;</span> key, which is the &quot;primary key&quot; in customers table and a &quot;foreign key&quot; in the orders table:</p><p><img src=\"https://i.froala.com/download/8c449a09122364b1e6dc2e653b1cc3bd7bafd19a.png?1508744163\" style=\"width: 676px; height: 166.747px;\" class=\"fr-fic fr-dib\"></p><p><br></p><table style=\"width: 100%;\"><tbody><tr><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">order_id</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">order_date</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">amount</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">customer_id</span></td></tr><tr><td style=\"width: 25.0000%;\"><span style=\"color: rgb(84, 172, 210);\">1</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">07/04/1776</span><br></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">$234.56</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">1</span></td></tr><tr><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">2</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">03/14/1760</span><br></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">$78.5</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">3</span></td></tr><tr><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">3</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">05/23/1784</span><br></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">$124.00</span><br></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">2</span></td></tr><tr><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">4</span></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">09/03/1790</span><br></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">$65.50</span><br></td><td style=\"width: 25.0000%;\"><span style=\"color: rgb(44, 130, 201);\">3</span></td></tr></tbody></table><p><br></p><p>Note that (1) not every customer in our customers table has placed an order and (2) there are a few orders for which no customer record exists in our customers table.</p><h2>Inner Join</h2><p>Let&rsquo;s say we wanted to get a list of those customers who placed an order and the details of the order they placed. This would be a perfect fit for an inner join, since an inner join returns records at the intersection of the two tables.</p><p><img src=\"https://i.froala.com/download/cc3e3e2fa1cb6da18d6d099c51a833e306d898f5.png?1508744347\" style=\"width: 686px; height: 118.907px;\" class=\"fr-fic fr-dib\"></p><p><br></p><p><img src=\"https://i.froala.com/download/1904e2b8bfdce2c8faedd1156427d2f4d0509352.png?1508744375\" style=\"width: 688px; height: 137.6px;\" class=\"fr-fic fr-dib\"></p><h2>Left Join</h2><p>If we wanted to simply append information about orders to our customers table, regardless of whether a customer placed an order or not, we would use a left join. A left join returns all records from table A and any matching records from table B.</p><p><img src=\"https://i.froala.com/download/ab88997ed8f641a6d17cf7bd9e75fe6e09844200.png?1508744428\" style=\"width: 688px; height: 149.067px;\" class=\"fr-fic fr-dib\"></p><p><br><img src=\"https://i.froala.com/download/10355066fcd2048b2d8d759466be6a26ed55cbd3.png?1508744463\" style=\"width: 687px; height: 192.36px;\" class=\"fr-fic fr-dib\"></p><p><br></p><p>The source is from <a href=\"http://www.sql-join.com/sql-join-types/\">SQL Join</a></p>',4,'2017-10-11','Database'),(6,'Dynamic Programming','<p>Dynamic programming is basically, recursion plus using common sense. What it means is that recursion allows you to express the value of a function in terms of other values of that function. Where the common sense tells you that if you implement your function in a way that the recursive calls are done in advance, and stored for easy access, it will make your program faster. This is what we call Memoization - it is memorizing the results of some specific states, which can then be later accessed to solve other sub-problems.</p><p><strong>The intuition behind dynamic programming is that we trade space for time</strong>, i.e. to say that instead of calculating all the states taking a lot of time but no space, we take up space to store the results of all the sub-problems to save time later.</p><p>Let&#39;s try to understand this by taking an example of Fibonacci numbers.</p><blockquote><p>Fibonacci (n) = 1; if n = 0<br>Fibonacci (n) = 1; if n = 1<br>Fibonacci (n) = Fibonacci(n-1) + Fibonacci(n-2)</p></blockquote><p>So, the first few numbers in this series will be: <strong>1, 1, 2, 3, 5, 8, 13, 21...</strong> and so on!</p><p>A code for it using pure recursion:</p><p><img src=\"https://i.froala.com/download/b8a2ce0b23fc70f3b2ba32c300a9d69d9ff8bb79.png?1508743542\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><pre>Using Dynamic Programming approach with memoization:</pre><p><img src=\"https://i.froala.com/download/28440f23719af3056b5bcd86cb37393dde916503.png?1508743571\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>',5,'2017-10-09','Algorithm'),(7,'Inheritance C++','<p>Inheritance is an important feature of classes; in fact, it is integral to the idea of object oriented programming. Inheritance allows you to create a hierarchy of classes, with various classes of more specific natures inheriting the general aspects of more generalized classes. In this way, it is possible to structure a program starting with abstract ideas that are then implemented by specific classes. For example, you might have a class Animal from which class dog and cat inherent the traits that are general to all animals; at the same time, each of those classes will have attributes specific to the animal dog or cat.</p><p><br></p><p>Inheritance offers many useful features to programmers. The ability, for example, of a variable of a more general class to function as any of the more specific classes which inherit from it, called polymorphism, is handy. For now, we will concentrate on the basic syntax of inheritance. Polymorphism will be covered in its own tutorial.<br><br>Any class can inherit from any other class, but it is not necessarily good practice to use inheritance (put it in the bank rather than go on a vacation). Inheritance should be used when you have a more general class of objects that describes a set of objects. The features of every element of that set (of every object that is also of the more general type) should be reflected in the more general class. This class is called the base class. base classes usually contain functions that all the classes inheriting from it, known as derived classes, will need. base classes should also have all the variables that every derived class would otherwise contain.<br><br>Let us look at an example of how to structure a program with several classes. Take a program used to simulate the interaction between types of organisms, trees, birds, bears, and other creatures coinhabiting a forest. There would likely be several base classes that would then have derived classes specific to individual animal types. In fact, if you know anything about biology, you might wish to structure your classes to take advantage of the biological classification from Kingdom to species, although it would probably be overly complex. Instead, you might have base classes for the animals and the plants. If you wanted to use more base classes (a class can be both a derived of one class and a base of another), you might have classes for flying animals and land animals, and perhaps trees and scrub. Then you would want classes for specific types of animals: pigeons and vultures, bears and lions, and specific types of plants: oak and pine, grass and flower. These are unlikely to live together in the same area, but the idea is essentially there: more specific classes ought to inherit from less specific classes.<br><br>Classes, of course, share data. A derived class has access to most of the functions and variables of the base class. There are, however, ways to keep a derived class from accessing some attributes of its base class. The keywords public, protected, and private are used to control access to information within a class. It is important to remember that public, protected, and private control information both for specific instances of classes and for classes as general data types. Variables and functions designated public are both inheritable by derived classes and accessible to outside functions and code when they are elements of a specific instance of a class. Protected variables are not accessible by functions and code outside the class, but derived classes inherit these functions and variables as part of their own class. Private variables are neither accessible outside the class when it is a specific class nor are available to derived classes. Private variables are useful when you have variables that make sense in the context of large idea.</p><p><br></p><p>The syntax to denote one class as inheriting from another is simple. It looks like the following: class Bear : public Animal, in place of simply the keyword class and then the class name. The &quot;: public <em>base_class_name</em>&quot; is the essential syntax of inheritance; the function of this syntax is that the class will contain all public and protected variables of the base class. Do not confuse the idea of a derived class having access to data members of a base class and specific instances of the derived class possessing data. The data members - variables and functions - possessed by the derived class are specific to the type of class, not to each individual object of that type. So, two different Bear objects, while having the same member variables and functions, may have different information stored in their variables; furthermore, if there is a class Animal with an object, say object BigAnimal, of that type, and not of a more specific type inherited from that class, those two bears will not have access to the data within BigAnimal. They will simply possess variables and functions with the same name and of the same type.&nbsp;</p><p><br></p><p>A quick example of inheritance:</p><p><img src=\"https://i.froala.com/download/7ea7d35da894401f65c225df71b6d2e5d4947f75.png?1508742852\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p>A discussion of the keywords public, private, and protected is useful when discussing inheritance. The three keywords are used to control access to functions and variables stored within a class.</p><p><br></p><h4>public:</h4><p>The most open level of <em>data hiding</em> is public. Anything that is public is available to all derived classes of a base class, and the public variables and data for each object of both the base and derived class is accessible by code outside the class. Functions marked public are generally those the class uses to give information to and take information from the outside world; they are typically the interface with the class. The rest of the class should be hidden from the user using private or protected data (This hidden nature and the highly focused nature of classes is known collectively as encapsulation). The syntax for public is:</p><p><img src=\"https://i.froala.com/download/4e44dec3a1add8e597b60cf67a27bd9bc7b8df62.png?1508742892\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br>Everything following is public until the end of the class or another data hiding keyword is used.<br><br>In general, a well-designed class will have no public fields--everything should go through the class&#39;s functions. Functions that retrieve variables are known as &#39;getters&#39; and those that change values are known as &#39;setters&#39;. Since the public part of the class is intended for use by others, it is often sensible to put the public section at the top of the class.</p><p><br></p><h4>protected:</h4><p>Variables and functions marked protected are inherited by derived classes; however, these derived classes hide the data from code outside of any instance of the object. Keep in mind, even if you have another object of the same type as your first object, the second object cannot access a protected variable in the first object. Instead, the second object will have its own variable with the same name - but not necessarily the same data. Protected is a useful level of access control for important aspects to a class that must be passed on without allowing it to be accessed. The syntax is the same as that of public. specifically,</p><p><img src=\"https://i.froala.com/download/72ed3b1266385c834d68ec65992f89e273805c1a.png?1508742931\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><h4>private:</h4><p>Private is the highest level of data-hiding. Not only are the functions and variables marked private not accessible by code outside the specific object in which that data appears, but private variables and functions are not inherited (in the sense that the derived class cannot directly access these variables or functions). The level of data protection afforded by protected is generally more flexible than that of the private level. On the other hand, if you do not wish derived classes to access a method, declaring it private is sensible.</p><p><img src=\"https://i.froala.com/download/969ca067dbb2e8b1e78fb4dc22ae34fe9e5eed2e.png?1508742951\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>',5,'2017-10-17','C++');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(45) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `bId` int(11) DEFAULT NULL,
  `pub_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `introduction` text,
  `profileImgAddress` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin5619','admin5619','admin5619','admin5619','I am administor.','/loginImages/3.jpeg','admin'),(2,'123','123','123','123','          Self introduction here.\r\n        ','/loginImages/1.jpeg',NULL),(3,'Esther','Esther','Xinyu','Zheng','   a student from USYD, who wants to build my own blogs\r\n        ','/loginImages/5.jpeg',NULL),(4,'hello','hello','hello','Zheng','          Self introduction here.\r\n        ','/loginImages/2.jpeg',NULL),(5,'Cepheus','13500421580','YIMING','LIU','          I am YIMING LIU, a student from USYD.\r\n WELCOME to my blog!\r\n        ','/loginImages/4.jpeg',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 19:44:32
