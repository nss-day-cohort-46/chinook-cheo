CREATE TABLE "Album" (
  "id" int PRIMARY KEY,
  "artistId" int,
  "title" varchar
);

CREATE TABLE "Artist" (
  "id" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "Customer" (
  "id" int PRIMARY KEY,
  "firstName" varchar,
  "lastName" varchar,
  "company" varchar,
  "address" varchar,
  "city" varchar,
  "state" varchar,
  "country" varchar,
  "postalCode" int,
  "phone" int,
  "fax" int,
  "email" email,
  "supportRepId" int
);

CREATE TABLE "Employee" (
  "id" int PRIMARY KEY,
  "firstName" varchar,
  "lastName" varchar,
  "title" varchar,
  "reportsTo" int,
  "birthDate" date,
  "hireDate" date,
  "address" varchar,
  "city" varchar,
  "state" varchar,
  "country" varchar,
  "postalCode" int,
  "phone" int,
  "fax" int,
  "email" email
);

CREATE TABLE "Genre" (
  "id" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "Track" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "albumId" int,
  "mediaTypeId" int,
  "genreId" int,
  "composer" varhcar,
  "milliseconds" int,
  "bytes" int,
  "unitPrice" float
);

CREATE TABLE "Invoice" (
  "id" int PRIMARY KEY,
  "customerId" int,
  "invoiceDate" date,
  "billingAddres" varchar,
  "billingCity" varchar,
  "billingState" varchar,
  "billingCountry" varchar,
  "billingPostalCode" int,
  "total" float
);

CREATE TABLE "InvoiceLine" (
  "id" int PRIMARY KEY,
  "invoiceId" int,
  "trackId" int,
  "unitPrice" float,
  "quanity" int
);

CREATE TABLE "MediaType" (
  "id" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "Playlist" (
  "id" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "PlaylistTrack" (
  "playList" int,
  "trackId" int
);

ALTER TABLE "Album" ADD FOREIGN KEY ("artistId") REFERENCES "Artist" ("id");

ALTER TABLE "PlaylistTrack" ADD FOREIGN KEY ("trackId") REFERENCES "Track" ("id");

ALTER TABLE "Customer" ADD FOREIGN KEY ("supportRepId") REFERENCES "Employee" ("id");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("customerId") REFERENCES "Customer" ("id");

ALTER TABLE "InvoiceLine" ADD FOREIGN KEY ("trackId") REFERENCES "Track" ("id");

ALTER TABLE "InvoiceLine" ADD FOREIGN KEY ("invoiceId") REFERENCES "Invoice" ("id");

ALTER TABLE "Track" ADD FOREIGN KEY ("albumId") REFERENCES "Album" ("id");

ALTER TABLE "Track" ADD FOREIGN KEY ("mediaTypeId") REFERENCES "MediaType" ("id");

ALTER TABLE "Track" ADD FOREIGN KEY ("genreId") REFERENCES "Genre" ("id");

ALTER TABLE "Employee" ADD FOREIGN KEY ("id") REFERENCES "Employee" ("reportsTo");

ALTER TABLE "PlaylistTrack" ADD FOREIGN KEY ("playList") REFERENCES "Playlist" ("id");
