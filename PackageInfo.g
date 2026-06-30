#############################################################################
##  
##  PackageInfo.g for the FrancyMonoids package
##                                                    Pedro A. Garcia-Sanchez
#W                                                    Andres Herrera-Poyatos
##                                                    Manuel Martins

SetPackageInfo( rec(

PackageName := "FrancyMonoids",
Subtitle := "A package to display commutative monoid objects with francy",
Version := "0.1",
Date := "04/06/2018", # dd/mm/yyyy format
License := "GPL-2.0-or-later",
##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "4.1.0">
##  <!ENTITY RELEASEDATE "26 April 2018">
##  <#/GAPDoc>

PackageWWWHome :=
  Concatenation( "https://gap-packages.github.io/", LowercaseString( ~.PackageName ) ),

SourceRepository := rec(
    Type := "git",
    URL := Concatenation( "https://github.com/gap-packages/", LowercaseString( ~.PackageName ) ),
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
SupportEmail := "pedro@ugr.es",

ArchiveURL := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/", ~.PackageName, "-", ~.Version ),
ArchiveFormats := ".tar.gz",

Persons := [
  rec( 
    LastName      := "García-Sánchez",
    FirstNames    := "Pedro A.",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "pedro@ugr.es",
    WWWHome       := "https://www.ugr.es/~pedro",
    PostalAddress := Concatenation( [
                       "Departamento de Álgebra, Facultad de Ciencias\n",
                       "Universidad de Granada, 18071 Granada\n",
                       "Spain" ] ),
    Place         := "Granada",
    Institution   := "Universidad de Granada"
  ),
  rec( 
    LastName      := "Herrera-Poyatos",
    FirstNames    := "Andrés",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "andreshp99@gmailcom",
    WWWHome       := "https://github.com/andreshp",
    PostalAddress := Concatenation( [
                       "Departamento de Álgebra, Facultad de Ciencias\n",
                       "Universidad de Granada, 18071 Granada\n",
                       "Spain" ] ),
    Place         := "Granada",
    Institution   := "Universidad de Granada"
  ),
  rec( 
    LastName      := "Martins",
    FirstNames    := "Manuel",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email        := "manuelmachadomartins@gmail.com",
    WWWHome      := "http://github.com/mcmartins",
    Institution  := "Universidade Aberta",
    Place := "Lisbon, PT"
)
  
],

Status := "deposited",

README_URL := 
  Concatenation( ~.PackageWWWHome, "/README.md" ),
PackageInfoURL := 
  Concatenation( ~.PackageWWWHome, "/PackageInfo.g" ),

AbstractHTML := 
  "The <span class=\"pkgname\">Example</span> package, provides some tools to draw objects related to affine and numerical semigroups.",

PackageDoc := rec(
  BookName  := "FrancyMonoids",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "A GAP Package to draw monoid objects with francy",
),


Dependencies := rec(
  GAP := "4.9",
  NeededOtherPackages := [["francy", "0.12"], ["NumericalSgps", "1.1.6"]],
  SuggestedOtherPackages := [],
  ExternalConditions := []
),

AvailabilityTest := ReturnTrue,

BannerString := Concatenation( 
    "----------------------------------------------------------------\n",
    "Loading  FrancyMonoids ", ~.Version, "\n",
    "by ",
    JoinStringsWithSeparator( List( Filtered( ~.Persons, r -> r.IsAuthor ),
                                    r -> Concatenation(
        r.FirstNames, " ", r.LastName, " (", r.WWWHome, ")\n" ) ), "   " ),
    "For help, type: ?FrancyMonoids package \n",
    "----------------------------------------------------------------\n" ),

TestFile := "tst/testall.g",

Keywords := ["graphs commutative monoids", "trees commutative monoids", "trees commutative monoids"]

));
