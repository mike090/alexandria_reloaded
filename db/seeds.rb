# frozen_string_literal: true

pat = Author.create!(given_name: 'Pat', family_name: 'Shaughnessy')
michael = Author.create!(given_name: 'Michael', family_name: 'Hartl')
sam = Author.create!(given_name: 'Sam', family_name: 'Ruby')

oreilly = Publisher.create!(name: "O'Reilly")

Book.create!(title: 'Ruby Under a Microscope',
             subtitle: 'An Illustrated Guide to Ruby Internals',
             isbn_10: '1593275617',
             isbn_13: '9781593275617',
             description: 'Ruby Under a Microscope is a cool book!',
             released_on: '2013-09-01',
             publisher: oreilly,
             author: pat)

Book.create!(title: 'Ruby on Rails Tutorial',
             subtitle: 'Learn Web Development with Rails',
             isbn_10: '0134077709',
             isbn_13: '9780134077703',
             description: 'The Rails Tutorial is great!',
             released_on: '2013-05-09',
             publisher: nil,
             author: michael)

Book.create!(title: 'Agile Web Development with Rails 4',
             subtitle: '',
             isbn_10: '1937785564',
             isbn_13: '9781937785567',
             description: 'Stay agile!',
             released_on: '2015-10-11',
             publisher: oreilly,
             author: sam)

asimov = Author.create!(given_name: 'Isaac', family_name: 'Asimov')

st_martins_press = Publisher.create!(name: "St. Martin's Press")

prometheus_books = Publisher.create!(name: 'Prometheus Books')

harper_row = Publisher.create!(name: 'Harper & Row')

doubleday = Publisher.create!(name: 'Doubleday')

oxford_university_press = Publisher.create!(name: 'Oxford University Press')

holt_rinehart_and_winston_a01 = Publisher.create!(name: 'Holt, Rinehart, and Winston')

abelard_schuman = Publisher.create!(name: 'Abelard-Schuman')

t_doherty_associates = Publisher.create!(name: 'T. Doherty Associates')

raintree_publishers = Publisher.create!(name: 'Raintree Publishers')

raintree = Publisher.create!(name: 'Raintree')

houghton_mifflin_co = Publisher.create!(name: 'Houghton Mifflin Co')

crown_publishers = Publisher.create!(name: 'Crown Publishers')

lothrop_lee_shepard_co = Publisher.create!(name: 'Lothrop, Lee & Shepard Co')

bantam_books = Publisher.create!(name: 'Bantam Books')

bantam = Publisher.create!(name: 'Bantam')

fawcett_crest = Publisher.create!(name: 'Fawcett Crest')

gollancz = Publisher.create!(name: 'Gollancz')

lothrop_lee_shepard = Publisher.create!(name: 'Lothrop, Lee & Shepard')

walker = Publisher.create!(name: 'Walker')

wynwood_press = Publisher.create!(name: 'Wynwood Press')

ballantine = Publisher.create!(name: 'Ballantine')

twayne = Publisher.create!(name: 'Twayne')

twayne_publishers = Publisher.create!(name: 'Twayne Publishers')

twayne_pub = Publisher.create!(name: 'Twayne Pub')

panther = Publisher.create!(name: 'Panther')

ace_books = Publisher.create!(name: 'Ace Books')

walker_and_company = Publisher.create!(name: 'Walker and Company')

houghton_mifflin = Publisher.create!(name: 'Houghton Mifflin')

avon = Publisher.create!(name: 'Avon')

new_american_library = Publisher.create!(name: 'New American Library')

grafton = Publisher.create!(name: 'Grafton')

new_york_graphic_society = Publisher.create!(name: 'New York Graphic Society')

mysterious_press = Publisher.create!(name: 'Mysterious Press')

fawcett_books = Publisher.create!(name: 'Fawcett Books')

dutton = Publisher.create!(name: 'Dutton')

beaufort_books = Publisher.create!(name: 'Beaufort Books')

simon_and_schuster = Publisher.create!(name: 'Simon and Schuster')

farrar_straus_giroux_a01 = Publisher.create!(name: 'Farrar Straus Giroux')

puffin_books = Publisher.create!(name: 'Puffin Books')

granada = Publisher.create!(name: 'Granada')

millenium = Publisher.create!(name: 'Millenium')

r_bentley = Publisher.create!(name: 'R. Bentley')

harpercollins = Publisher.create!(name: 'HarperCollins')

walker_and_co = Publisher.create!(name: 'Walker and Co')

tor = Publisher.create!(name: 'Tor')

j_curley = Publisher.create!(name: 'J. Curley')

avenel_books_distributed_by_cr = Publisher.create!(name: 'Avenel Books : distributed by Crown Publishers')

greenwood_press = Publisher.create!(name: 'Greenwood Press')

good_year_books_scott_foresman = Publisher.create!(name: 'Good Year Books/Scott, Foresman')

bonanza_books = Publisher.create!(name: 'Bonanza Books')

tsr = Publisher.create!(name: 'TSR')

basic_books_inc = Publisher.create!(name: 'Basic Books, Inc')

c_n_potter_distributed_by__a02 = Publisher.create!(name: 'C. N. Potter : distributed by Crown Publishers')

g_stevens = Publisher.create!(name: 'G. Stevens')

g_stevens_pub = Publisher.create!(name: 'G. Stevens Pub')

gareth_stevens_pub = Publisher.create!(name: 'Gareth Stevens Pub')

gareth_stevens_pub_co = Publisher.create!(name: 'Gareth Stevens Pub. Co')

gareth_stevens = Publisher.create!(name: 'Gareth Stevens')

severn_house = Publisher.create!(name: 'Severn House')

norton = Publisher.create!(name: 'Norton')

w_w_norton = Publisher.create!(name: 'W.W. Norton')

dial_press = Publisher.create!(name: 'Dial Press')

lightning = Publisher.create!(name: 'Lightning')

published_for_the_crime_cl_a01 = Publisher.create!(name: 'Published for the Crime Club by Doubleday')

henry = Publisher.create!(name: 'Henry')

daw_books = Publisher.create!(name: 'DAW Books')

crown = Publisher.create!(name: 'Crown')

bell_pub_co = Publisher.create!(name: 'Bell Pub. Co')

fawcett_publications = Publisher.create!(name: 'Fawcett Publications')

basic_books = Publisher.create!(name: 'Basic Books')

avon_books = Publisher.create!(name: 'Avon Books')

anchor_books = Publisher.create!(name: 'Anchor Books')

avenel_books_distributed_b_a03 = Publisher.create!(name: 'Avenel Books Distributed by Crown Publishers')

sidgwick_and_jackson = Publisher.create!(name: 'Sidgwick and Jackson')

deutsch = Publisher.create!(name: 'Deutsch')

lothrup_lee_shepard_co = Publisher.create!(name: 'Lothrup, Lee & Shepard Co')

truman_talley_books_dutton = Publisher.create!(name: 'Truman Talley Books/Dutton')

galahad = Publisher.create!(name: 'Galahad')

taplinger_pub_co = Publisher.create!(name: 'Taplinger Pub. Co')

follett_pub_co = Publisher.create!(name: 'Follett Pub. Co')

rapp_whiting = Publisher.create!(name: 'Rapp & Whiting')

dembner_books = Publisher.create!(name: 'Dembner Books')

zysk_i_s_ka_wydaw = Publisher.create!(name: 'Zysk i S-ka. Wydaw')

dennis_dobson = Publisher.create!(name: 'Dennis Dobson')

farrar_straus_giroux = Publisher.create!(name: 'Farrar, Straus, Giroux')

dobson = Publisher.create!(name: 'Dobson')

sphere = Publisher.create!(name: 'Sphere')

hale = Publisher.create!(name: 'Hale')

collins = Publisher.create!(name: 'Collins')

dale = Publisher.create!(name: 'Dale')

harmony_books = Publisher.create!(name: 'Harmony Books')

harpercollins_publishers = Publisher.create!(name: 'HarperCollins Publishers')

panther_books = Publisher.create!(name: 'Panther Books')

crm_books = Publisher.create!(name: 'CRM Books')

g_k_hall_a01 = Publisher.create!(name: 'G.K. Hall')

d_i_fine = Publisher.create!(name: 'D.I. Fine')

ballantine_books = Publisher.create!(name: 'Ballantine Books')

university_press_of_the_pacifi = Publisher.create!(name: 'University Press of the Pacific')

voyager = Publisher.create!(name: 'Voyager')

fawcett_pub = Publisher.create!(name: 'Fawcett Pub')

ballantine_del_rey_a02 = Publisher.create!(name: 'Ballantine (Del Rey)')

wiley = Publisher.create!(name: 'Wiley')

spectra = Publisher.create!(name: 'Spectra')

bantam_books_mm = Publisher.create!(name: 'Bantam Books (Mm)')

del_rey = Publisher.create!(name: 'Del Rey')

fawcett = Publisher.create!(name: 'Fawcett')

houghton_mifflin_juv = Publisher.create!(name: 'Houghton Mifflin (Juv)')

warner_books = Publisher.create!(name: 'Warner Books')

bantam_books_spectra = Publisher.create!(name: 'Bantam Books/Spectra')

roc = Publisher.create!(name: 'ROC')

carroll_graf = Publisher.create!(name: 'Carroll & Graf')

plaza_y_janes = Publisher.create!(name: 'Plaza y Janes')

plaza_janes_editor = Publisher.create!(name: 'Plaza & Janes Editor')

harper_audio = Publisher.create!(name: 'Harper Audio')

sudamericana = Publisher.create!(name: 'Sudamericana')

bruguera = Publisher.create!(name: 'Bruguera')

victor_gollancz = Publisher.create!(name: 'Victor Gollancz')

plaza_janes_editores_s_a = Publisher.create!(name: 'Plaza & Janes Editores, S.A')

houghton_mifflin_company = Publisher.create!(name: 'Houghton Mifflin Company')

dorset_press = Publisher.create!(name: 'Dorset Press')

plume_a01 = Publisher.create!(name: 'Plume')

new_amer_library_mm = Publisher.create!(name: 'New Amer Library (Mm)')

avon_books_mm = Publisher.create!(name: 'Avon Books (Mm)')

gramercy = Publisher.create!(name: 'Gramercy')

perennial = Publisher.create!(name: 'Perennial')

macmillan_pub_co_a02 = Publisher.create!(name: 'Macmillan Pub Co')

gramercy_books = Publisher.create!(name: 'Gramercy Books')

macmillan_publishing_company = Publisher.create!(name: 'MacMillan Publishing Company')

i_books = Publisher.create!(name: 'I Books')

carroll_graf_pub_inc_a01 = Publisher.create!(name: 'Carroll & Graf Pub. Inc')

collier_books = Publisher.create!(name: 'Collier Books')

mandarin = Publisher.create!(name: 'Mandarin')

ibooks = Publisher.create!(name: 'ibooks')

harperprism = Publisher.create!(name: 'HarperPrism')

fawcett_columbine = Publisher.create!(name: 'Fawcett Columbine')

harper_collins = Publisher.create!(name: 'Harper Collins')

modern_publishing = Publisher.create!(name: 'Modern Publishing')

parkwest_publications = Publisher.create!(name: 'Parkwest Publications')

pan = Publisher.create!(name: 'Pan')

sfbc = Publisher.create!(name: 'SFBC')

gallimard = Publisher.create!(name: 'Gallimard')

cambridge_university_press = Publisher.create!(name: 'Cambridge University Press')

dell_publishing_company = Publisher.create!(name: 'Dell Publishing Company')

octopus_heinemann = Publisher.create!(name: 'Octopus/Heinemann')

pinnacle_books = Publisher.create!(name: 'Pinnacle Books')

fawcett_crest_books = Publisher.create!(name: 'Fawcett Crest Books')

daw = Publisher.create!(name: 'DAW')

granada_panther = Publisher.create!(name: 'Granada/Panther')

signet = Publisher.create!(name: 'Signet')

creative_education = Publisher.create!(name: 'Creative Education')

pocket = Publisher.create!(name: 'Pocket')

foundation_book = Publisher.create!(name: 'Foundation Book')

dobson_books = Publisher.create!(name: 'Dobson Books')

doubleday_books = Publisher.create!(name: 'Doubleday Books')

berkley_books = Publisher.create!(name: 'Berkley Books')

science_fiction_book_club = Publisher.create!(name: 'Science Fiction Book Club')

coronet = Publisher.create!(name: 'Coronet')

dale_books = Publisher.create!(name: 'Dale Books')

collins_australia = Publisher.create!(name: 'Collins Australia')

congdon_weed_in_association_wi = Publisher.create!(name: 'Congdon & Weed in association with Davis Publications')

congdon_weed = Publisher.create!(name: 'Congdon & Weed')

baen_books = Publisher.create!(name: 'Baen Books')

writers_digest_books = Publisher.create!(name: "Writer's Digest Books")

weybright_and_talley = Publisher.create!(name: 'Weybright and Talley')

jai_lu = Publisher.create!(name: "J'ai lu")

dell = Publisher.create!(name: 'Dell')

orion_pub_co = Publisher.create!(name: 'Orion Pub Co')

bookthrift_co = Publisher.create!(name: 'Bookthrift Co')

d_dobson_a01 = Publisher.create!(name: 'D. Dobson')

delacorte_press = Publisher.create!(name: 'Delacorte Press')

arrow = Publisher.create!(name: 'Arrow')

follett = Publisher.create!(name: 'Follett')

bart_books = Publisher.create!(name: 'Bart Books')

grosset_dunlap = Publisher.create!(name: 'Grosset & Dunlap')

heinemann = Publisher.create!(name: 'Heinemann')

tom_doherty_assoc_llc = Publisher.create!(name: 'Tom Doherty Assoc Llc')

main_street_books = Publisher.create!(name: 'Main Street Books')

university_press_of_mississipp = Publisher.create!(name: 'University Press of Mississippi')

peterson_publishing = Publisher.create!(name: 'Peterson Publishing')

cosmos_store = Publisher.create!(name: 'Cosmos Store')

avon_books_a03 = Publisher.create!(name: 'Avon Books')

davis_publications = Publisher.create!(name: 'Davis Publications')

amereon_ltd = Publisher.create!(name: 'Amereon Ltd')

new_american_library_of_ca_a01 = Publisher.create!(name: 'New American Library of Canada')

grove_pr = Publisher.create!(name: 'Grove Pr')

new_english_library = Publisher.create!(name: 'New English Library')

transworld_publishers_ltd = Publisher.create!(name: 'Transworld Publishers Ltd')

ace = Publisher.create!(name: 'Ace')

zebra_books = Publisher.create!(name: 'Zebra Books')

tor_books = Publisher.create!(name: 'Tor Books')

century = Publisher.create!(name: 'Century')

new_amer_library_trade = Publisher.create!(name: 'New Amer Library Trade')

alianza = Publisher.create!(name: 'Alianza')

futura = Publisher.create!(name: 'Futura')

gnome_press = Publisher.create!(name: 'Gnome Press')

lubbe = Publisher.create!(name: 'Lübbe')

rebound_by_sagebrush = Publisher.create!(name: 'Rebound by Sagebrush')

apocket_books = Publisher.create!(name: 'aPocket Books')

good_year_books = Publisher.create!(name: 'Good Year Books')

harper_collins_publishers_stoc = Publisher.create!(name: 'Harper Collins Publishers Stock Account')

gareth_stevens_publishing = Publisher.create!(name: 'Gareth Stevens Publishing')

watts = Publisher.create!(name: 'Watts')

diogenes = Publisher.create!(name: 'Diogenes')

ace_trade = Publisher.create!(name: 'Ace Trade')

astran = Publisher.create!(name: 'Astran')

ediciones_b = Publisher.create!(name: 'Ediciones B')

random_house_value_publishing = Publisher.create!(name: 'Random House Value Publishing')

signet_classics = Publisher.create!(name: 'Signet Classics')

p_mass_paper = Publisher.create!(name: 'P Mass Paper')

houghton_mifflin_p = Publisher.create!(name: 'Houghton Mifflin (P)')

random_house = Publisher.create!(name: 'Random House')

greatapes = Publisher.create!(name: 'GreaTapes')

barricade_books = Publisher.create!(name: 'Barricade Books')

touchstone = Publisher.create!(name: 'Touchstone')

galaxy_publishing_corp = Publisher.create!(name: 'Galaxy Publishing Corp')

academy_chicago_publishers = Publisher.create!(name: 'Academy Chicago Publishers')

dell_pub_co_a01 = Publisher.create!(name: 'Dell Pub Co')

avon_books_p = Publisher.create!(name: 'Avon Books (P)')

grafton_books = Publisher.create!(name: 'Grafton Books')

knightsbridge_pub_co_mass = Publisher.create!(name: 'Knightsbridge Pub Co Mass')

bluejay_books = Publisher.create!(name: 'Bluejay Books')

berkley = Publisher.create!(name: 'Berkley')

pan_macmillan = Publisher.create!(name: 'Pan Macmillan')

denoel = Publisher.create!(name: 'Denoel')

edhasa = Publisher.create!(name: 'Edhasa')

debolsillo = Publisher.create!(name: 'Debolsillo')

wildside_press = Publisher.create!(name: 'Wildside Press')

la_factoria_de_ideas = Publisher.create!(name: 'La Factoria de Ideas')

bantam_doubleday_dell = Publisher.create!(name: 'Bantam Doubleday Dell')

alianza_editorial_sa = Publisher.create!(name: 'Alianza Editorial Sa')

barnes_and_noble_books = Publisher.create!(name: 'Barnes and Noble Books')

demco_media = Publisher.create!(name: 'Demco Media')

oscar_mondadori = Publisher.create!(name: 'Oscar Mondadori')

davis_publications_inc = Publisher.create!(name: 'Davis Publications, Inc')

eos = Publisher.create!(name: 'Eos')

pyramid_books = Publisher.create!(name: 'Pyramid Books')

heyne_bucher = Publisher.create!(name: 'Heyne Bucher')

paper_tiger = Publisher.create!(name: 'Paper Tiger')

robson = Publisher.create!(name: 'Robson')

plaza_janes_editores_s_a_a02 = Publisher.create!(name: 'Plaza & Janes Editores, S. A')

h_holt = Publisher.create!(name: 'H. Holt')

mjf_books = Publisher.create!(name: 'MJF Books')

f_watts = Publisher.create!(name: 'F. Watts')

harpercollins_voyager = Publisher.create!(name: 'HarperCollins/Voyager')

greenwich_house = Publisher.create!(name: 'Greenwich House')

sphere_books = Publisher.create!(name: 'Sphere Books')

walker_co = Publisher.create!(name: 'Walker & Co')

j_curley_associates = Publisher.create!(name: 'J. Curley & Associates')

bbs_publishing_corporation = Publisher.create!(name: 'BBS Publishing Corporation')

vallentine_mitchell_a01 = Publisher.create!(name: 'Vallentine, Mitchell')

heyne = Publisher.create!(name: 'Heyne')

random_house_audio = Publisher.create!(name: 'Random House Audio')

bruguera_libro_amigo = Publisher.create!(name: 'Bruguera Libro Amigo')

corgi = Publisher.create!(name: 'Corgi')

bantam_doubleday_dell_a01 = Publisher.create!(name: 'BANTAM DOUBLEDAY @ DELL')

macdonald_and_co = Publisher.create!(name: 'Macdonald and Co')

walker_pub_co = Publisher.create!(name: 'Walker Pub. Co')

dell_publishing = Publisher.create!(name: 'Dell Publishing')

hodder_stoughton_general_divis = Publisher.create!(name: 'Hodder & Stoughton General Division')

prentice_hall_a01 = Publisher.create!(name: 'Prentice-Hall')

worldwide = Publisher.create!(name: 'Worldwide')

tandem_library = Publisher.create!(name: 'Tandem Library')

audio_literature = Publisher.create!(name: 'Audio Literature')

penguin_putnam_mass = Publisher.create!(name: 'Penguin Putnam~mass')

debols_llo = Publisher.create!(name: 'Debols!llo')

mentor = Publisher.create!(name: 'Mentor')

sterling = Publisher.create!(name: 'Sterling')

oscar_italian = Publisher.create!(name: 'Oscar Italian')

gareth_stevens_childrens_books = Publisher.create!(name: "Gareth Stevens Children's Books")
Book.create!(title: 'Exiles', subtitle: '', isbn_10: '0312274939', isbn_13: '9780312274931', description: '',
             released_on: '1993-01-01', publisher: st_martins_press, author: asimov)
Book.create!(title: 'Election day 2084', subtitle: '', isbn_10: '0879752580', isbn_13: '9780879752583',
             description: '', released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'The roving mind', subtitle: '', isbn_10: '0879752017', isbn_13: '9780879752019', description: '',
             released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'The measure of the universe', subtitle: '', isbn_10: '0060151293', isbn_13: '9780060151294',
             description: '', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: "Asimov's chronology of science and discovery", subtitle: '', isbn_10: '0060156120',
             isbn_13: '9780060156121', description: '', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'Puzzles of the black widowers', subtitle: '', isbn_10: '0385400373', isbn_13: '9780385400374',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Science and creationism', subtitle: '', isbn_10: '0195032527', isbn_13: '9780195032529',
             description: '', released_on: '1993-01-01', publisher: oxford_university_press, author: asimov)
Book.create!(title: 'Asimov on science', subtitle: '', isbn_10: '0385263457', isbn_13: '9780385263450',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Machines that think', subtitle: '', isbn_10: '0030614988', isbn_13: '9780030614989',
             description: '', released_on: '1993-01-01', publisher: holt_rinehart_and_winston_a01, author: asimov)
Book.create!(title: 'Foundation and earth', subtitle: '', isbn_10: '038523709X', isbn_13: '9780385237093',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Foundation and earth', subtitle: '', isbn_10: '0385233124', isbn_13: '9780385233125',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Environments out there', subtitle: '', isbn_10: '0200715100', isbn_13: '9780200715102',
             description: 'From known facts and scientific probabilities a scientist fashions the environment of the moon and of distant planets.', released_on: '1993-01-01', publisher: abelard_schuman, author: asimov)
Book.create!(title: "Foundation's friends", subtitle: '', isbn_10: '0312931743', isbn_13: '9780312931742',
             description: '', released_on: '1993-01-01', publisher: t_doherty_associates, author: asimov)
Book.create!(title: 'Travels through time', subtitle: '', isbn_10: '0817217266', isbn_13: '9780817217266',
             description: '', released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'Thinking machines', subtitle: '', isbn_10: '0817217274', isbn_13: '9780817217273',
             description: '', released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'Wild inventions', subtitle: '', isbn_10: '0817217282', isbn_13: '9780817217280', description: '',
             released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'After the end', subtitle: '', isbn_10: '0817217290', isbn_13: '9780817217297', description: '',
             released_on: '1993-01-01', publisher: raintree, author: asimov)
Book.create!(title: 'Earth invaded', subtitle: '', isbn_10: '0817217320', isbn_13: '9780817217327', description: '',
             released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'Mad scientists', subtitle: '', isbn_10: '0817217339', isbn_13: '9780817217334', description: '',
             released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'Mutants', subtitle: '', isbn_10: '0817217347', isbn_13: '9780817217341', description: '',
             released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: "Tomorrow's TV", subtitle: '', isbn_10: '0817217355', isbn_13: '9780817217358', description: '',
             released_on: '1993-01-01', publisher: raintree, author: asimov)
Book.create!(title: 'Bug awful', subtitle: '', isbn_10: '0817217398', isbn_13: '9780817217396', description: '',
             released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'Children of the future', subtitle: '', isbn_10: '0817217401', isbn_13: '9780817217402',
             description: '', released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'The Immortals', subtitle: '', isbn_10: '081721741X', isbn_13: '9780817217419', description: '',
             released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'Time warps', subtitle: '', isbn_10: '0817217428', isbn_13: '9780817217426', description: '',
             released_on: '1993-01-01', publisher: raintree_publishers, author: asimov)
Book.create!(title: 'The land of Canaan', subtitle: '', isbn_10: '0395125723', isbn_13: '9780395125724',
             description: 'Traces the history of the Fertile Crescent, the area stretching between the Persian Gulf and central Israel, from the New Stone Age to the Roman conquest.', released_on: '1993-01-01', publisher: houghton_mifflin_co, author: asimov)
Book.create!(title: 'Extraterrestrial civilizations', subtitle: '', isbn_10: '0517530759', isbn_13: '9780517530757',
             description: '', released_on: '1993-01-01', publisher: crown_publishers, author: asimov)
Book.create!(title: 'Jupiter, the largest planet', subtitle: '', isbn_10: '0688500447', isbn_13: '9780688500443',
             description: 'A comprehensive study of Jupiter from the earliest discoveries of its distance, size, and satellites, to recent discoveries regarding its atmosphere, composition, and the Great Red Spot.', released_on: '1993-01-01', publisher: lothrop_lee_shepard_co, author: asimov)
Book.create!(title: 'Jupiter, the largest planet', subtitle: '', isbn_10: '0688400442', isbn_13: '9780688400446',
             description: 'A comprehensive study of Jupiter from the earliest discoveries of its distance, size, and satellites, to recent discoveries regarding its atmosphere, composition, and the Great Red Spot.', released_on: '1993-01-01', publisher: lothrop_lee_shepard_co, author: asimov)
Book.create!(title: 'I, robot', subtitle: '', isbn_10: '0553294385', isbn_13: '9780553294385', description: '',
             released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'The tyrannosaurus prescription and 100 other essays', subtitle: '', isbn_10: '0879755407',
             isbn_13: '9780879755409', description: '', released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'The positronic man', subtitle: '', isbn_10: '0553561219', isbn_13: '9780553561210',
             description: '', released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: 'The ugly little boy', subtitle: '', isbn_10: '0553561227', isbn_13: '9780553561227',
             description: '', released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: "Isaac Asimov's guide to earth and space", subtitle: '', isbn_10: '0449220591',
             isbn_13: '9780449220597', description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'The gods themselves', subtitle: '', isbn_10: '0575036478', isbn_13: '9780575036475',
             description: '', released_on: '1993-01-01', publisher: gollancz, author: asimov)
Book.create!(title: 'Saturn and beyond', subtitle: '', isbn_10: '0688518761', isbn_13: '9780688518769',
             description: 'Presents a detailed discussion of the four outermost planets in our solar system.', released_on: '1993-01-01', publisher: lothrop_lee_shepard, author: asimov)
Book.create!(title: 'Saturn and beyond', subtitle: '', isbn_10: '0688418767', isbn_13: '9780688418762',
             description: 'Presents a detailed discussion of the four outermost planets in our solar system.', released_on: '1993-01-01', publisher: lothrop_lee_shepard, author: asimov)
Book.create!(title: 'Fantastic voyage II', subtitle: '', isbn_10: '0385243928', isbn_13: '9780385243926',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Fantastic voyage II', subtitle: '', isbn_10: '0385239262', isbn_13: '9780385239264',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The march of the millennia', subtitle: '', isbn_10: '0802711227', isbn_13: '9780802711229',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The New Hugo winners', subtitle: '', isbn_10: '0922066213', isbn_13: '9780922066216',
             description: '', released_on: '1993-01-01', publisher: wynwood_press, author: asimov)
Book.create!(title: 'Second foundation', subtitle: '', isbn_10: '0345309014', isbn_13: '9780345309013',
             description: '', released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'The Science fictional solar system', subtitle: '', isbn_10: '0060115270',
             isbn_13: '9780060115272', description: '', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'I. Asimov', subtitle: '', isbn_10: '0385417012', isbn_13: '9780385417013', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'David Starr, space ranger', subtitle: '', isbn_10: '0839824866', isbn_13: '9780839824862',
             description: '', released_on: '1993-01-01', publisher: twayne, author: asimov)
Book.create!(title: 'Lucky Starr and the pirates of the asteroids', subtitle: '', isbn_10: '0839824874',
             isbn_13: '9780839824879', description: '', released_on: '1993-01-01', publisher: twayne, author: asimov)
Book.create!(title: 'Lucky Starr and the oceans of Venus', subtitle: '', isbn_10: '0839824882',
             isbn_13: '9780839824886', description: '', released_on: '1993-01-01', publisher: twayne_publishers, author: asimov)
Book.create!(title: 'Lucky Starr and the big sun of Mercury', subtitle: '', isbn_10: '0839824890',
             isbn_13: '9780839824893', description: '', released_on: '1993-01-01', publisher: twayne_pub, author: asimov)
Book.create!(title: 'Lucky Starr and the moons of Jupiter', subtitle: '', isbn_10: '0839824904',
             isbn_13: '9780839824909', description: '', released_on: '1993-01-01', publisher: twayne, author: asimov)
Book.create!(title: 'Lucky Starr and the rings of Saturn', subtitle: '', isbn_10: '0839824912',
             isbn_13: '9780839824916', description: 'Lucky Starr and his crew travel through space in pursuit of an enemy agent carrying a stolen capsule containing important information about Earth.', released_on: '1993-01-01', publisher: twayne_pub, author: asimov)
Book.create!(title: 'Robots and empire', subtitle: '', isbn_10: '0385190921', isbn_13: '9780385190923',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Second foundation', subtitle: '', isbn_10: '0586017135', isbn_13: '9780586017135',
             description: '', released_on: '1993-01-01', publisher: panther, author: asimov)
Book.create!(title: 'Prelude to Foundation', subtitle: '', isbn_10: '0385245858', isbn_13: '9780385245852',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Prelude to Foundation', subtitle: '', isbn_10: '0385233132', isbn_13: '9780385233132',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Isaac Asimov's Caliban", subtitle: '', isbn_10: '0441090796', isbn_13: '9780441090792',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Beginnings', subtitle: '', isbn_10: '0802710034', isbn_13: '9780802710031', description: '',
             released_on: '1993-01-01', publisher: walker_and_company, author: asimov)
Book.create!(title: 'Treasury of humor', subtitle: '', isbn_10: '0395126657', isbn_13: '9780395126653',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Quasar, quasar, burning bright', subtitle: '', isbn_10: '0385134649', isbn_13: '9780385134644',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0380397013', isbn_13: '9780380397013',
             description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'The Hugo winners', subtitle: '', isbn_10: '038518946X', isbn_13: '9780385189460', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The Hugo winners', subtitle: '', isbn_10: '0385189346', isbn_13: '9780385189347', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Nemesis', subtitle: '', isbn_10: '0385247923', isbn_13: '9780385247924', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Nemesis', subtitle: '', isbn_10: '0385266197', isbn_13: '9780385266192', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Asimov on chemistry', subtitle: '', isbn_10: '0385041004', isbn_13: '9780385041003',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Asimov on astronomy', subtitle: '', isbn_10: '038504111X', isbn_13: '9780385041119',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The genetic code', subtitle: '', isbn_10: '0451618211', isbn_13: '9780451618214', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'The stars like dust', subtitle: '', isbn_10: '0586024417', isbn_13: '9780586024416',
             description: '', released_on: '1993-01-01', publisher: grafton, author: asimov)
Book.create!(title: 'Our world in space', subtitle: '', isbn_10: '0821204343', isbn_13: '9780821204344',
             description: '', released_on: '1993-01-01', publisher: new_york_graphic_society, author: asimov)
Book.create!(title: "Asimov's Sherlockian limericks", subtitle: '', isbn_10: '089296040X', isbn_13: '9780892960408',
             description: '', released_on: '1993-01-01', publisher: mysterious_press, author: asimov)
Book.create!(title: "Asimov's Sherlockian limericks", subtitle: '', isbn_10: '0892960396', isbn_13: '9780892960392',
             description: '', released_on: '1993-01-01', publisher: mysterious_press, author: asimov)
Book.create!(title: 'Forward the foundation', subtitle: '', isbn_10: '0553565079', isbn_13: '9780553565072',
             description: '', released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'The dangers of intelligence and other science essays', subtitle: '', isbn_10: '0395415543',
             isbn_13: '9780395415542', description: '', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Lucky Starr and the moons of Jupiter', subtitle: '', isbn_10: '0449234223',
             isbn_13: '9780449234228', description: '', released_on: '1993-01-01', publisher: fawcett_books, author: asimov)
Book.create!(title: 'The tragedy of the moon', subtitle: '', isbn_10: '0200721887', isbn_13: '9780200721882',
             description: '', released_on: '1993-01-01', publisher: abelard_schuman, author: asimov)
Book.create!(title: 'Atom', subtitle: '', isbn_10: '0525249907', isbn_13: '9780525249900', description: '',
             released_on: '1993-01-01', publisher: dutton, author: asimov)
Book.create!(title: 'Isaac Asimov presents the best horror and supernatural of the 19th century', subtitle: '',
             isbn_10: '0825301289', isbn_13: '9780825301285', description: '', released_on: '1993-01-01', publisher: beaufort_books, author: asimov)
Book.create!(title: "Foundation's edge", subtitle: '', isbn_10: '0385177259', isbn_13: '9780385177252',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'A choice of catastrophes', subtitle: '', isbn_10: '0671227017', isbn_13: '9780671227012',
             description: '', released_on: '1993-01-01', publisher: simon_and_schuster, author: asimov)
Book.create!(title: 'Of matters great and small', subtitle: '', isbn_10: '0385022255', isbn_13: '9780385022255',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The foundation trilogy', subtitle: '', isbn_10: '0380001012', isbn_13: '9780380001019',
             description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Wizards', subtitle: '', isbn_10: '0451125428', isbn_13: '9780451125422', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Hallucination orbit', subtitle: '', isbn_10: '0374328358', isbn_13: '9780374328351',
             description: 'Twelve science fiction stories which explore the complexities and limitations of the human mind as it responds to unusual situations, bizarre societies, and unorthodox problems. Includes a brief analysis of each story.', released_on: '1993-01-01', publisher: farrar_straus_giroux_a01, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0345309006', isbn_13: '9780345309006',
             description: '', released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'The heavenly host', subtitle: '', isbn_10: '0140311173', isbn_13: '9780140311174',
             description: 'Newly arrived on Planet Anderson Two just before Christmas, Jonathan is warned about the dangerous native inhabitants, but an accidental meeting with one of the natives convinces him that they are friendly and peaceful.', released_on: '1993-01-01', publisher: puffin_books, author: asimov)
Book.create!(title: '100 great science fiction short short stories', subtitle: '', isbn_10: '0385130449',
             isbn_13: '9780385130448', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The beginning and the end', subtitle: '', isbn_10: '0385130880', isbn_13: '9780385130882',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Asimov's annotated Paradise lost", subtitle: '', isbn_10: '0385079923', isbn_13: '9780385079921',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Isaac Asimov presents tales of the occult', subtitle: '', isbn_10: '0879755067',
             isbn_13: '9780879755065', description: '', released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'Election day 2084', subtitle: '', isbn_10: '087975270X', isbn_13: '9780879752705',
             description: '', released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'Banquets of the black widowers', subtitle: '', isbn_10: '0246126736', isbn_13: '9780246126733',
             description: '', released_on: '1993-01-01', publisher: granada, author: asimov)
Book.create!(title: "Isaac Asimov's Utopia", subtitle: '', isbn_10: '0752809865', isbn_13: '9780752809861',
             description: '', released_on: '1993-01-01', publisher: millenium, author: asimov)
Book.create!(title: 'The Martian way and other stories', subtitle: '', isbn_10: '083760463X', isbn_13: '9780837604633',
             description: '', released_on: '1993-01-01', publisher: r_bentley, author: asimov)
Book.create!(title: 'Pebble in the sky', subtitle: '', isbn_10: '0837604621', isbn_13: '9780837604626',
             description: '', released_on: '1993-01-01', publisher: r_bentley, author: asimov)
Book.create!(title: 'Speculations', subtitle: '', isbn_10: '0395320658', isbn_13: '9780395320655', description: '',
             released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: "Asimov's chronology of science & discovery", subtitle: '', isbn_10: '0062701134',
             isbn_13: '9780062701138', description: '', released_on: '1993-01-01', publisher: harpercollins, author: asimov)
Book.create!(title: 'Norby and the oldest dragon', subtitle: '', isbn_10: '0802769098', isbn_13: '9780802769091',
             description: "Jeff Wells and his personal robot Norby find adventure when they travel to planet Jamyn and attend the Grand Dragon's birthday party.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Norby and the oldest dragon', subtitle: '', isbn_10: '0802769101', isbn_13: '9780802769107',
             description: "Jeff Wells and his personal robot Norby find adventure when they travel to planet Jamyn and attend the Grand Dragon's birthday party.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about Neptune?', subtitle: '', isbn_10: '0802769810',
             isbn_13: '9780802769817', description: "An account of astronomers' observations over the years leading to the discovery of Neptune's existence.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about Pluto?', subtitle: '', isbn_10: '0802769926', isbn_13: '9780802769923',
             description: "Describes the history of Pluto's discovery and what is known and unknown about the planet today.", released_on: '1993-01-01', publisher: walker_and_co, author: asimov)
Book.create!(title: 'How did we find out about Pluto?', subtitle: '', isbn_10: '0802769918', isbn_13: '9780802769916',
             description: "Describes the history of Pluto's discovery and what is known and unknown about the planet today.", released_on: '1993-01-01', publisher: walker_and_co, author: asimov)
Book.create!(title: 'Our angry earth', subtitle: '', isbn_10: '0312852525', isbn_13: '9780312852528', description: '',
             released_on: '1993-01-01', publisher: tor, author: asimov)
Book.create!(title: 'Our angry earth', subtitle: '', isbn_10: '0812520963', isbn_13: '9780812520965', description: '',
             released_on: '1993-01-01', publisher: tor, author: asimov)
Book.create!(title: 'Out of the everywhere', subtitle: '', isbn_10: '0385262019', isbn_13: '9780385262019',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Foundation's edge", subtitle: '', isbn_10: '0893406058', isbn_13: '9780893406059',
             description: '', released_on: '1993-01-01', publisher: j_curley, author: asimov)
Book.create!(title: "Asimov's guide to Shakespeare", subtitle: '', isbn_10: '0517268256', isbn_13: '9780517268254',
             description: '', released_on: '1993-01-01', publisher: avenel_books_distributed_by_cr, author: asimov)
Book.create!(title: 'A short history of chemistry', subtitle: '', isbn_10: '0313207690', isbn_13: '9780313207693',
             description: '', released_on: '1993-01-01', publisher: greenwood_press, author: asimov)
Book.create!(title: 'The sun shines bright', subtitle: '', isbn_10: '0385171455', isbn_13: '9780385171458',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Asimov's annotated Don Juan", subtitle: '', isbn_10: '0385044364', isbn_13: '9780385044363',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Foundation's edge", subtitle: '', isbn_10: '0345308980', isbn_13: '9780345308986',
             description: '', released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: "The planet that wasn't", subtitle: '', isbn_10: '038511687X', isbn_13: '9780385116879',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The shaping of France', subtitle: '', isbn_10: '0395138914', isbn_13: '9780395138915',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'The complete science fair handbook', subtitle: '', isbn_10: '067338800X',
             isbn_13: '9780673388001', description: '', released_on: '1993-01-01', publisher: good_year_books_scott_foresman, author: asimov)
Book.create!(title: 'Asimov on physics', subtitle: '', isbn_10: '0385009585', isbn_13: '9780385009584',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The Deadly sins and cardinal virtues of science fiction', subtitle: '', isbn_10: '0517385953',
             isbn_13: '9780517385951', description: '', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'A short history of biology', subtitle: '', isbn_10: '0313225834', isbn_13: '9780313225833',
             description: '', released_on: '1993-01-01', publisher: greenwood_press, author: asimov)
Book.create!(title: 'Amazing stories', subtitle: '', isbn_10: '0880382163', isbn_13: '9780880382168', description: '',
             released_on: '1993-01-01', publisher: tsr, author: asimov)
Book.create!(title: 'Murder at the ABA', subtitle: '', isbn_10: '0385113056', isbn_13: '9780385113052',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'How to enjoy writing', subtitle: '', isbn_10: '0802773036', isbn_13: '9780802773036',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How to enjoy writing', subtitle: '', isbn_10: '0802709451', isbn_13: '9780802709455',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Asimov's Guide to science", subtitle: '', isbn_10: '0140219129', isbn_13: '9780140219128',
             description: '', released_on: '1993-01-01', publisher: basic_books_inc, author: asimov)
Book.create!(title: 'The exploding suns', subtitle: '', isbn_10: '0525243232', isbn_13: '9780525243236',
             description: '', released_on: '1993-01-01', publisher: dutton, author: asimov)
Book.create!(title: "The annotated Gulliver's travels", subtitle: '', isbn_10: '0517539497', isbn_13: '9780517539491',
             description: '', released_on: '1993-01-01', publisher: c_n_potter_distributed_by__a02, author: asimov)
Book.create!(title: 'The history of physics', subtitle: '', isbn_10: '0802707513', isbn_13: '9780802707512',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Life and time', subtitle: '', isbn_10: '0385146450', isbn_13: '9780385146456', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The bicentennial man, and other stories', subtitle: '', isbn_10: '057502240X',
             isbn_13: '9780575022409', description: '', released_on: '1993-01-01', publisher: gollancz, author: asimov)
Book.create!(title: 'The Future in question', subtitle: '', isbn_10: '0449242668', isbn_13: '9780449242667',
             description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'The collapsing universe', subtitle: '', isbn_10: '0802704867', isbn_13: '9780802704863',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Asimov's annotated Gilbert & Sullivan", subtitle: '', isbn_10: '0385239157',
             isbn_13: '9780385239158', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Laughing space', subtitle: '', isbn_10: '0395305195', isbn_13: '9780395305195', description: '',
             released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'How do airplanes fly?', subtitle: '', isbn_10: '0836808002', isbn_13: '9780836808001',
             description: 'Briefly describes how the forces of lift and thrust are used to overcome gravity and resistance to enable airplanes to fly.', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'What happens when I flush the toilet?', subtitle: '', isbn_10: '0836808010',
             isbn_13: '9780836808018', description: 'Briefly describes how toilets are used to get rid of waste and how sewage is treated.', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'How do big ships float?', subtitle: '', isbn_10: '0836808029', isbn_13: '9780836808025',
             description: 'Briefly describes several kinds of ships and the forces that cause them to float or sink.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'How is paper made?', subtitle: '', isbn_10: '0836808037', isbn_13: '9780836808032',
             description: 'Briefly describes the process involved in making paper and some of the problems associated with the production and use of paper.', released_on: '1993-01-01', publisher: gareth_stevens_pub_co, author: asimov)
Book.create!(title: 'How does a TV work?', subtitle: '', isbn_10: '0836808045', isbn_13: '9780836808049',
             description: 'Provides a simple explanation of the technology involved in transmitting and receiving television signals.', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'How does a cut heal?', subtitle: '', isbn_10: '0836808053', isbn_13: '9780836808056',
             description: 'Describes what happens when the body is cut or bruised, how the body reacts to these injuries, and steps to help the healing process.', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Why do we need sleep?', subtitle: '', isbn_10: '0836808061', isbn_13: '9780836808063',
             description: 'A brief discussion of sleep, why we need it, what happens when we sleep, and sleep disorders.', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Why do we need to brush our teeth?', subtitle: '', isbn_10: '083680807X',
             isbn_13: '9780836808070', description: 'Describes the structure and function of our teeth and the importance of taking care of them.', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Why do people come in different colors?', subtitle: '', isbn_10: '0836808088',
             isbn_13: '9780836808087', description: 'Explains, in simple terms, the reasons for skin color, how it is determined by heredity, and how various environmental factors affect it.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Why do some people wear glasses?', subtitle: '', isbn_10: '0836808096', isbn_13: '9780836808094',
             description: 'Briefly describes how our eyes work, various vision problems, and how glasses can help us see better.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: "Asimov's Guide to Halley's comet", subtitle: '', isbn_10: '0802708366', isbn_13: '9780802708366',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Science past, science future', subtitle: '', isbn_10: '0385099231', isbn_13: '9780385099233',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The dark void', subtitle: '', isbn_10: '0727814249', isbn_13: '9780727814241', description: '',
             released_on: '1993-01-01', publisher: severn_house, author: asimov)
Book.create!(title: 'Limericks, too gross', subtitle: '', isbn_10: '0393045307', isbn_13: '9780393045307',
             description: '', released_on: '1993-01-01', publisher: norton, author: asimov)
Book.create!(title: 'Limericks', subtitle: '', isbn_10: '0393045226', isbn_13: '9780393045222', description: '',
             released_on: '1993-01-01', publisher: w_w_norton, author: asimov)
Book.create!(title: 'How did we find out about vitamins?', subtitle: '', isbn_10: '0802761836',
             isbn_13: '9780802761835', description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about vitamins?', subtitle: '', isbn_10: '0802761844',
             isbn_13: '9780802761842', description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The birth of the United States, 1763-1816', subtitle: '', isbn_10: '0395184517',
             isbn_13: '9780395184516', description: 'This second volume of a history of the United States concentrates on the causes and events of the Revolution and the formative years of the new Republic.', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: "Isaac Asimov's space of her own", subtitle: '', isbn_10: '0385279531', isbn_13: '9780385279536',
             description: '', released_on: '1993-01-01', publisher: dial_press, author: asimov)
Book.create!(title: "Isaac Asimov's tomorrow's voices", subtitle: '', isbn_10: '0385279981', isbn_13: '9780385279987',
             description: '', released_on: '1993-01-01', publisher: dial_press, author: asimov)
Book.create!(title: 'The big sun of Mercury', subtitle: '', isbn_10: '0340484977', isbn_13: '9780340484975',
             description: '', released_on: '1993-01-01', publisher: lightning, author: asimov)
Book.create!(title: 'Casebook of the Black Widowers', subtitle: '', isbn_10: '0385157045', isbn_13: '9780385157049',
             description: '', released_on: '1993-01-01', publisher: published_for_the_crime_cl_a01, author: asimov)
Book.create!(title: 'How did we find out about numbers?', subtitle: '', isbn_10: '0802761364',
             isbn_13: '9780802761361', description: 'Traces the origin of numbers and the development of the Roman, Egyptian, and Hindu systems of numerals.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about numbers?', subtitle: '', isbn_10: '0802761356',
             isbn_13: '9780802761354', description: 'Traces the origin of numbers and the development of the Roman, Egyptian, and Hindu systems of numerals.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Murder at the open', subtitle: '', isbn_10: '0860251241', isbn_13: '9780860251248',
             description: '', released_on: '1993-01-01', publisher: henry, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great SF stories #17 (1955)', subtitle: '', isbn_10: '0886772567',
             isbn_13: '9780886772567', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great SF stories #18 (1956)', subtitle: '', isbn_10: '0886772893',
             isbn_13: '9780886772895', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Asimov on science fiction', subtitle: '', isbn_10: '0385174438', isbn_13: '9780385174435',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Exploring the earth and the cosmos', subtitle: '', isbn_10: '0517546671',
             isbn_13: '9780517546673', description: '', released_on: '1993-01-01', publisher: crown, author: asimov)
Book.create!(title: 'How did we find out about germs?', subtitle: '', isbn_10: '0802761666', isbn_13: '9780802761668',
             description: "Traces the developing knowledge about germs from the first sighting of them under a primitive microscope to modern medicine's new methods of combating them.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about germs?', subtitle: '', isbn_10: '0802761658', isbn_13: '9780802761651',
             description: "Traces the developing knowledge about germs from the first sighting of them under a primitive microscope to modern medicine's new methods of combating them.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Isaac Asimov's science fiction treasury", subtitle: '', isbn_10: '0517336359',
             isbn_13: '9780517336359', description: 'Originally published in two volumes under titles: The Future in question and Space mail.', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'The robots of dawn', subtitle: '', isbn_10: '0586061991', isbn_13: '9780586061992',
             description: '', released_on: '1993-01-01', publisher: panther, author: asimov)
Book.create!(title: 'The road to infinity', subtitle: '', isbn_10: '038514962X', isbn_13: '9780385149624',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great SF stories, #13, 1951', subtitle: '', isbn_10: '0886770580',
             isbn_13: '9780886770587', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: "Isaac Asimov's best of Superquiz", subtitle: '', isbn_10: '0517467941', isbn_13: '9780517467947',
             description: '', released_on: '1993-01-01', publisher: bell_pub_co, author: asimov)
Book.create!(title: 'The sun shines bright', subtitle: '', isbn_10: '0246120436', isbn_13: '9780246120434',
             description: '', released_on: '1993-01-01', publisher: granada, author: asimov)
Book.create!(title: "Asimov's galaxy", subtitle: '', isbn_10: '0385241208', isbn_13: '9780385241205', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The universe', subtitle: '', isbn_10: '080270655X', isbn_13: '9780802706553', description: '',
             released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The twelve frights of Christmas', subtitle: '', isbn_10: '0380750988', isbn_13: '9780380750986',
             description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Neanderthals', subtitle: '', isbn_10: '0451147162', isbn_13: '9780451147165', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'The subatomic monster', subtitle: '', isbn_10: '0385196598', isbn_13: '9780385196598',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Understanding physics', subtitle: '', isbn_10: '0451621212', isbn_13: '9780451621214',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Understanding physics', subtitle: '', isbn_10: '0451621905', isbn_13: '9780451621900',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Understanding physics', subtitle: '', isbn_10: '0451622022', isbn_13: '9780451622020',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Perihelion', subtitle: '', isbn_10: '0441373887', isbn_13: '9780441373888', description: '',
             released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'The naked sun', subtitle: '', isbn_10: '0449242439', isbn_13: '9780449242438', description: '',
             released_on: '1993-01-01', publisher: fawcett_publications, author: asimov)
Book.create!(title: "Asimov's New guide to science", subtitle: '', isbn_10: '0465004733', isbn_13: '9780465004737',
             description: '', released_on: '1993-01-01', publisher: basic_books, author: asimov)
Book.create!(title: 'How did we find out about microwaves?', subtitle: '', isbn_10: '0802768377',
             isbn_13: '9780802768377', description: 'Describes the discovery of microwaves and explains how they function and their many uses.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about microwaves?', subtitle: '', isbn_10: '0802768385',
             isbn_13: '9780802768384', description: 'Describes the discovery of microwaves and explains how they function and their many uses.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Norby down to earth', subtitle: '', isbn_10: '0802768660', isbn_13: '9780802768667',
             description: "Jeff Wells leaves the space academy with his mixed-up robot Norby and the two of them head back to Earth to help Jeff's brother unravel a mystery involving zapped robots and stolen computer parts.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about photosynthesis?', subtitle: '', isbn_10: '0802768865',
             isbn_13: '9780802768865', description: "Traces the scientific discoveries that led to our understanding of photosynthesis and how this process relates to the food supply, changing ecological balance, and threats to the Earth's atmosphere.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Norby and Yobo's great adventure", subtitle: '', isbn_10: '0802768938', isbn_13: '9780802768933',
             description: 'When Jeff and his robot Norby accompany Admiral Yobo to prehistoric times so the admiral can do family research, the trip turns into a dangerous adventure.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Norby and Yobo's great adventure", subtitle: '', isbn_10: '0802768946', isbn_13: '9780802768940',
             description: 'When Jeff and his robot Norby accompany Admiral Yobo to prehistoric times so the admiral can do family research, the trip turns into a dangerous adventure.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Second foundation', subtitle: '', isbn_10: '0380008238', isbn_13: '9780380008230',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Asimov on chemistry', subtitle: '', isbn_10: '0385040059', isbn_13: '9780385040051',
             description: '', released_on: '1993-01-01', publisher: anchor_books, author: asimov)
Book.create!(title: 'Isaac Asimov presents the golden years of science fiction', subtitle: '', isbn_10: '0517401479',
             isbn_13: '9780517401477', description: '', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'X stands for unknown', subtitle: '', isbn_10: '038518915X', isbn_13: '9780385189156',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Asimov's Guide to the Bible", subtitle: '', isbn_10: '051734582X', isbn_13: '9780517345825',
             description: '', released_on: '1993-01-01', publisher: avenel_books_distributed_b_a03, author: asimov)
Book.create!(title: "Isaac Asimov's Fantasy!", subtitle: '', isbn_10: '0385230176', isbn_13: '9780385230179',
             description: '', released_on: '1993-01-01', publisher: dial_press, author: asimov)
Book.create!(title: 'The end of eternity', subtitle: '', isbn_10: '0553288091', isbn_13: '9780553288094',
             description: '', released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: 'The gods themselves', subtitle: '', isbn_10: '0553288105', isbn_13: '9780553288100',
             description: '', released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: 'How did we find out about superconductivity?', subtitle: '', isbn_10: '0802767761',
             isbn_13: '9780802767769', description: 'Discusses the history of the development of superconductive materials and explores the problem of finding materials that are superconductive at higher temperatures.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The best of Isaac Asimov', subtitle: '', isbn_10: '028397981X', isbn_13: '9780283979811',
             description: '', released_on: '1993-01-01', publisher: sidgwick_and_jackson, author: asimov)
Book.create!(title: 'Eyes on the universe', subtitle: '', isbn_10: '0233967605', isbn_13: '9780233967608',
             description: '', released_on: '1993-01-01', publisher: deutsch, author: asimov)
Book.create!(title: 'Unnatural diplomacy', subtitle: '', isbn_10: '0380757532', isbn_13: '9780380757534',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Phases in chaos', subtitle: '', isbn_10: '0380757524', isbn_13: '9780380757527', description: '',
             released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'The Diplomacy guild', subtitle: '', isbn_10: '0380757516', isbn_13: '9780380757510',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Familiar poems, annotated', subtitle: '', isbn_10: '0385116861', isbn_13: '9780385116862',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Venus, near neighbor of the Sun', subtitle: '', isbn_10: '0688419763', isbn_13: '9780688419769',
             description: 'A comprehensive discussion of Venus with information on neighboring Mercury, asteroids, and comets. Includes numerous tables and figures.', released_on: '1993-01-01', publisher: lothrop_lee_shepard, author: asimov)
Book.create!(title: 'Venus, near neighbor of the Sun', subtitle: '', isbn_10: '0688519768', isbn_13: '9780688519766',
             description: 'A comprehensive discussion of Venus with information on neighboring Mercury, asteroids, and comets. Includes numerous tables and figures.', released_on: '1993-01-01', publisher: lothrop_lee_shepard, author: asimov)
Book.create!(title: 'Jupiter, the largest planet', subtitle: '', isbn_10: '0688517285', isbn_13: '9780688517281',
             description: 'A comprehensive study of Jupiter from the earliest discoveries of its distance, size, and satellites, to recent discoveries regarding its atmosphere, composition, and the Great Red Spot.', released_on: '1993-01-01', publisher: lothrup_lee_shepard_co, author: asimov)
Book.create!(title: 'Today and tomorrow and', subtitle: '', isbn_10: '0385032471', isbn_13: '9780385032476',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great science fiction stories, volume 5, 1943', subtitle: '',
             isbn_10: '0879976047', isbn_13: '9780879976040', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Frontiers II', subtitle: '', isbn_10: '0525936319', isbn_13: '9780525936312', description: '',
             released_on: '1993-01-01', publisher: truman_talley_books_dutton, author: asimov)
Book.create!(title: 'Isaac Asimov science fiction masterpieces', subtitle: '', isbn_10: '0883657139',
             isbn_13: '9780883657133', description: '', released_on: '1993-01-01', publisher: galahad, author: asimov)
Book.create!(title: 'Microcosmic tales', subtitle: '', isbn_10: '0800852389', isbn_13: '9780800852382',
             description: '', released_on: '1993-01-01', publisher: taplinger_pub_co, author: asimov)
Book.create!(title: 'The winds of change and other stories', subtitle: '', isbn_10: '0385180993',
             isbn_13: '9780385180993', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Change!', subtitle: '', isbn_10: '039531545X', isbn_13: '9780395315453', description: '',
             released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'The sun', subtitle: '', isbn_10: '0695403206', isbn_13: '9780695403201',
             description: 'Discusses the origins, physical makeup, and relationship to earth of the huge star called the sun.', released_on: '1993-01-01', publisher: follett_pub_co, author: asimov)
Book.create!(title: 'The sun', subtitle: '', isbn_10: '0695803204', isbn_13: '9780695803209',
             description: 'Discusses the origins, physical makeup, and relationship to earth of the huge star called the sun.', released_on: '1993-01-01', publisher: follett_pub_co, author: asimov)
Book.create!(title: 'The Union Club mysteries', subtitle: '', isbn_10: '0385188064', isbn_13: '9780385188067',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'More words of science', subtitle: '', isbn_10: '0395137225', isbn_13: '9780395137222',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Science, numbers and I', subtitle: '', isbn_10: '0853911177', isbn_13: '9780853911173',
             description: '', released_on: '1993-01-01', publisher: rapp_whiting, author: asimov)
Book.create!(title: 'In joy still felt', subtitle: '', isbn_10: '0385155441', isbn_13: '9780385155441',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Devils', subtitle: '', isbn_10: '0451148657', isbn_13: '9780451148650', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Inside the atom', subtitle: '', isbn_10: '0200714449', isbn_13: '9780200714440',
             description: "Discusses in detail the structure and behavior of the atom and its present and future uses, especially in light of the world's energy crisis.", released_on: '1993-01-01', publisher: abelard_schuman, author: asimov)
Book.create!(title: 'Isaac Asimov presents From Harding to Hiroshima', subtitle: '', isbn_10: '0934878943',
             isbn_13: '9780934878944', description: '', released_on: '1993-01-01', publisher: dembner_books, author: asimov)
Book.create!(title: 'Isaac Asimov presents the Best crime stories of the 19th century', subtitle: '',
             isbn_10: '0934878994', isbn_13: '9780934878999', description: '', released_on: '1993-01-01', publisher: dembner_books, author: asimov)
Book.create!(title: 'R?owni bogom', subtitle: '', isbn_10: '8386211830', isbn_13: '9788386211838', description: '',
             released_on: '1993-01-01', publisher: zysk_i_s_ka_wydaw, author: asimov)
Book.create!(title: 'Tantalizing locked room mysteries', subtitle: '', isbn_10: '0802706800', isbn_13: '9780802706805',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about the brain?', subtitle: '', isbn_10: '0802767362',
             isbn_13: '9780802767363', description: 'Traces the development of scientific knowledge about the brain and how it works.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about the brain?', subtitle: '', isbn_10: '0802767370',
             isbn_13: '9780802767370', description: 'Traces the development of scientific knowledge about the brain and how it works.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Think about space', subtitle: '', isbn_10: '0802767664', isbn_13: '9780802767660',
             description: 'An overview of the history and present and future role of human beings in space tracing the development of space exploration and discussing the challenges of the present day and the possibilities of the future.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Think about space', subtitle: '', isbn_10: '0802767672', isbn_13: '9780802767677',
             description: 'An overview of the history and present and future role of human beings in space tracing the development of space exploration and discussing the challenges of the present day and the possibilities of the future.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Norby finds a villain', subtitle: '', isbn_10: '0802767117', isbn_13: '9780802767110',
             description: 'Fifteen-year-old Jeff and his mixed-up robot, Norby, travel backwards and forwards in time and find themselves prisoners on an alien planet in another universe.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Norby finds a villain', subtitle: '', isbn_10: '0802767109', isbn_13: '9780802767103',
             description: 'Fifteen-year-old Jeff and his mixed-up robot, Norby, travel backwards and forwards in time and find themselves prisoners on an alien planet in another universe.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Asimov's Guide to science", subtitle: '', isbn_10: '0465004725', isbn_13: '9780465004720',
             description: '', released_on: '1993-01-01', publisher: basic_books, author: asimov)
Book.create!(title: 'The tragedy of the moon', subtitle: '', isbn_10: '038507221X', isbn_13: '9780385072212',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Prisoners of the stars', subtitle: '', isbn_10: '0385132700', isbn_13: '9780385132701',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The best science fiction of Isaac Asimov', subtitle: '', isbn_10: '0385197829',
             isbn_13: '9780385197823', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The best mysteries of Isaac Asimov', subtitle: '', isbn_10: '0385197837',
             isbn_13: '9780385197830', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The alternate Asimovs', subtitle: '', isbn_10: '0385197845', isbn_13: '9780385197847',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The Martian way, and other science fiction stories', subtitle: '', isbn_10: '0234777796',
             isbn_13: '9780234777794', description: '', released_on: '1993-01-01', publisher: dennis_dobson, author: asimov)
Book.create!(title: 'Isaac Asimov presents the golden years of science fiction', subtitle: '', isbn_10: '0517435225',
             isbn_13: '9780517435229', description: '', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'Caught in the organ draft', subtitle: '', isbn_10: '0374312281', isbn_13: '9780374312282',
             description: 'An anthology of twelve science fiction stories with biological themes.', released_on: '1993-01-01', publisher: farrar_straus_giroux, author: asimov)
Book.create!(title: 'The neutrino, ghost particle of the atom', subtitle: '', isbn_10: '0234779829',
             isbn_13: '9780234779828', description: '', released_on: '1993-01-01', publisher: dobson, author: asimov)
Book.create!(title: 'Eyes on the universe', subtitle: '', isbn_10: '0395207169', isbn_13: '9780395207161',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Before the Golden Age', subtitle: '', isbn_10: '0385024193', isbn_13: '9780385024198',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The complete robot', subtitle: '', isbn_10: '0385177240', isbn_13: '9780385177245',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The Hugo winners', subtitle: '', isbn_10: '0722112475', isbn_13: '9780722112472', description: '',
             released_on: '1993-01-01', publisher: sphere, author: asimov)
Book.create!(title: 'Buy Jupiter, and other stories', subtitle: '', isbn_10: '0385050771', isbn_13: '9780385050777',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The best of Isaac Asimov', subtitle: '', isbn_10: '038505078X', isbn_13: '9780385050784',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'In memory yet green', subtitle: '', isbn_10: '038513679X', isbn_13: '9780385136792',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Animals of the Bible', subtitle: '', isbn_10: '0385071957', isbn_13: '9780385071956',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Frontiers', subtitle: '', isbn_10: '0525246622', isbn_13: '9780525246626', description: '',
             released_on: '1993-01-01', publisher: dutton, author: asimov)
Book.create!(title: 'The complete stories', subtitle: '', isbn_10: '038541627X', isbn_13: '9780385416276',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The complete stories', subtitle: '', isbn_10: '0385416067', isbn_13: '9780385416061',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Isaac Asimov's choice", subtitle: '', isbn_10: '0709027648', isbn_13: '9780709027645',
             description: '', released_on: '1993-01-01', publisher: hale, author: asimov)
Book.create!(title: 'Asimov', subtitle: '', isbn_10: '0003701697', isbn_13: '9780003701692', description: '',
             released_on: '1993-01-01', publisher: collins, author: asimov)
Book.create!(title: 'Isaac Asimov presents the best science fiction firsts', subtitle: '', isbn_10: '082530184X',
             isbn_13: '9780825301841', description: '', released_on: '1993-01-01', publisher: beaufort_books, author: asimov)
Book.create!(title: 'Extraterrestrials and eclipses', subtitle: '', isbn_10: '0895591073', isbn_13: '9780895591074',
             description: '', released_on: '1993-01-01', publisher: dale, author: asimov)
Book.create!(title: "Robots, machines in man's image", subtitle: '', isbn_10: '0517551101', isbn_13: '9780517551103',
             description: '', released_on: '1993-01-01', publisher: harmony_books, author: asimov)
Book.create!(title: 'Lecherous limericks', subtitle: '', isbn_10: '0802704980', isbn_13: '9780802704986',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'More lecherous limericks', subtitle: '', isbn_10: '0802771025', isbn_13: '9780802771025',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'More lecherous limericks', subtitle: '', isbn_10: '0802705154', isbn_13: '9780802705150',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Murder at the ABA', subtitle: '', isbn_10: '0449204111', isbn_13: '9780449204115',
             description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: "ABC's of the ocean", subtitle: '', isbn_10: '0802760872', isbn_13: '9780802760876',
             description: 'Defines two oceanographic terms for each letter of the alphabet from aquanaut and aquaculture to zooplankton and zoogene.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "ABC's of the ocean", subtitle: '', isbn_10: '0802760864', isbn_13: '9780802760869',
             description: 'Defines two oceanographic terms for each letter of the alphabet from aquanaut and aquaculture to zooplankton and zoogene.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about genes?', subtitle: '', isbn_10: '0802765009', isbn_13: '9780802765000',
             description: 'Traces the developing knowledge about heredity from the plant breeding experiments of Gregor Mendel to the use of x-rays to produce mutations and the effect of natural mutations on the evolution of species.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about genes?', subtitle: '', isbn_10: '0802764991', isbn_13: '9780802764997',
             description: 'Traces the developing knowledge about heredity from the plant breeding experiments of Gregor Mendel to the use of x-rays to produce mutations and the effect of natural mutations on the evolution of species.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about solar power?', subtitle: '', isbn_10: '0802764223',
             isbn_13: '9780802764225', description: "Describes the uses of the sun's energy from the time of the Greeks and Romans to the present day and discusses the potential of this source of energy in our modern world.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about solar power?', subtitle: '', isbn_10: '0802764231',
             isbn_13: '9780802764232', description: "Describes the uses of the sun's energy from the time of the Greeks and Romans to the present day and discusses the potential of this source of energy in our modern world.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about the universe?', subtitle: '', isbn_10: '0802764770',
             isbn_13: '9780802764775', description: 'Explains how our conception of the size of the universe has changed as astronomers and their instruments have become more sophisticated.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about the universe?', subtitle: '', isbn_10: '0802764762',
             isbn_13: '9780802764768', description: 'Explains how our conception of the size of the universe has changed as astronomers and their instruments have become more sophisticated.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about volcanoes?', subtitle: '', isbn_10: '0802764126',
             isbn_13: '9780802764126', description: 'Discusses the features of a volcano, the causes of eruptions, and the locations of active volcanoes on earth and elsewhere in our solar system.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about volcanoes?', subtitle: '', isbn_10: '0802764118',
             isbn_13: '9780802764119', description: 'Discusses the features of a volcano, the causes of eruptions, and the locations of active volcanoes on earth and elsewhere in our solar system.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Asimov on numbers', subtitle: '', isbn_10: '0385120745', isbn_13: '9780385120746',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Asimov's chronology of the world", subtitle: '', isbn_10: '0062700367', isbn_13: '9780062700360',
             description: '', released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: 'Counting the eons', subtitle: '', isbn_10: '0385179766', isbn_13: '9780385179768',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0586013555', isbn_13: '9780586013557',
             description: '', released_on: '1993-01-01', publisher: panther_books, author: asimov)
Book.create!(title: 'In the beginning', subtitle: '', isbn_10: '0517543362', isbn_13: '9780517543368', description: '',
             released_on: '1993-01-01', publisher: crown_publishers, author: asimov)
Book.create!(title: 'Fantastic voyage II', subtitle: '', isbn_10: '0553273272', isbn_13: '9780553273274',
             description: '', released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'Witches', subtitle: '', isbn_10: '0451128826', isbn_13: '9780451128829', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Physical science today', subtitle: '', isbn_10: '0876651368', isbn_13: '9780876651360',
             description: '', released_on: '1993-01-01', publisher: crm_books, author: asimov)
Book.create!(title: 'Starships', subtitle: '', isbn_10: '0449201260', isbn_13: '9780449201268', description: '',
             released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'The secret of the universe', subtitle: '', isbn_10: '0385416938', isbn_13: '9780385416931',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Isaac Asimov presents the best science fiction of the 19th century', subtitle: '',
             isbn_10: '082530038X', isbn_13: '9780825300387', description: '', released_on: '1993-01-01', publisher: beaufort_books, author: asimov)
Book.create!(title: 'Isaac Asimov presents the best fantasy of the 19th century', subtitle: '', isbn_10: '0825300991',
             isbn_13: '9780825300998', description: '', released_on: '1993-01-01', publisher: beaufort_books, author: asimov)
Book.create!(title: 'Norby and the court jester', subtitle: '', isbn_10: '0783886101', isbn_13: '9780783886107',
             description: "While visiting the toy and game fair on planet Izz, Jeff and Norby search for a missing robot and the villain responsible for sabotaging the planet's computer system.", released_on: '1993-01-01', publisher: g_k_hall_a01, author: asimov)
Book.create!(title: 'Great science fiction', subtitle: '', isbn_10: '0917657268', isbn_13: '9780917657269',
             description: '', released_on: '1993-01-01', publisher: d_i_fine, author: asimov)
Book.create!(title: 'The shaping of North America from earliest times to 1763', subtitle: '', isbn_10: '0395154936',
             isbn_13: '9780395154939', description: 'A history of North America concentrating on European interests and rivalries and their influence on the development of the New World.', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'I, Robot', subtitle: '', isbn_10: '0345314824', isbn_13: '9780345314826', description: '',
             released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'Lucky Starr and the big sun of Mercury', subtitle: '', isbn_10: '0345314395',
             isbn_13: '9780345314390', description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Living in the future', subtitle: '', isbn_10: '0825302250', isbn_13: '9780825302251',
             description: '', released_on: '1993-01-01', publisher: beaufort_books, author: asimov)
Book.create!(title: 'The story of Ruth', subtitle: '', isbn_10: '0385052081', isbn_13: '9780385052085',
             description: 'Summary: Retells the Old Testament tale of the faithful daughter-in-law showing how the events of the story reveal the history of that period.', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The 13 crimes of science fiction', subtitle: '', isbn_10: '0385152205', isbn_13: '9780385152204',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Worlds within worlds', subtitle: '', isbn_10: '0898750008', isbn_13: '9780898750003',
             description: '', released_on: '1993-01-01', publisher: university_press_of_the_pacifi, author: asimov)
Book.create!(title: 'The robots of dawn', subtitle: '', isbn_10: '038518400X', isbn_13: '9780385184007',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Life and energy', subtitle: '', isbn_10: '0380009420', isbn_13: '9780380009428', description: '',
             released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Worlds within worlds', subtitle: '', isbn_10: '0898750016', isbn_13: '9780898750010',
             description: '', released_on: '1993-01-01', publisher: university_press_of_the_pacifi, author: asimov)
Book.create!(title: 'Gold', subtitle: '', isbn_10: '000224621X', isbn_13: '9780002246217', description: '',
             released_on: '1993-01-01', publisher: harpercollins, author: asimov)
Book.create!(title: 'Gold', subtitle: '', isbn_10: '0006482023', isbn_13: '9780006482024', description: '',
             released_on: '1993-01-01', publisher: harpercollins, author: asimov)
Book.create!(title: 'Magic', subtitle: '', isbn_10: '0002246228', isbn_13: '9780002246224', description: '',
             released_on: '1993-01-01', publisher: voyager, author: asimov)
Book.create!(title: 'Magic', subtitle: '', isbn_10: '0006482031', isbn_13: '9780006482031', description: '',
             released_on: '1993-01-01', publisher: voyager, author: asimov)
Book.create!(title: 'Counting the eons', subtitle: '', isbn_10: '0380670909', isbn_13: '9780380670901',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Tales of the black widowers', subtitle: '', isbn_10: '0449229440', isbn_13: '9780449229446',
             description: '', released_on: '1993-01-01', publisher: fawcett_pub, author: asimov)
Book.create!(title: 'Azazel', subtitle: '', isbn_10: '038524410X', isbn_13: '9780385244107',
             description: 'Azazel, an enchanting other-wordly imp, uses his magical powers to help humans beset by ill fortune, frequently with unexpected results.', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The robot novels', subtitle: '', isbn_10: '0345331192', isbn_13: '9780345331199', description: '',
             released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'I, robot', subtitle: '', isbn_10: '0449239497', isbn_13: '9780449239490', description: '',
             released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'I, Robot', subtitle: '', isbn_10: '0345331397', isbn_13: '9780345331397', description: '',
             released_on: '1993-01-01', publisher: ballantine_del_rey_a02, author: asimov)
Book.create!(title: "Asimov's biographical encyclopedia of science and technology", subtitle: '',
             isbn_10: '0385177712', isbn_13: '9780385177719', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Robots and empire', subtitle: '', isbn_10: '0345328949', isbn_13: '9780345328946',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'A history of mathematics', subtitle: '', isbn_10: '0471543977', isbn_13: '9780471543978',
             description: '', released_on: '1993-01-01', publisher: wiley, author: asimov)
Book.create!(title: 'DAVID STARR SPACE RANGER/LUCKY STARR AND', subtitle: '', isbn_10: '0553291661',
             isbn_13: '9780553291667', description: '', released_on: '1993-01-01', publisher: spectra, author: asimov)
Book.create!(title: 'David Starr, Space Ranger & Lucky Starr and the Pirates of the Asteroids', subtitle: '',
             isbn_10: '0553562061', isbn_13: '9780553562064', description: '', released_on: '1993-01-01', publisher: bantam_books_mm, author: asimov)
Book.create!(title: 'Lucky Starr and the rings of Saturn', subtitle: '', isbn_10: '0345318307',
             isbn_13: '9780345318305', description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'LUCKY STARR & PIRATES', subtitle: '', isbn_10: '0345315626', isbn_13: '9780345315625',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Lucky Starr and the moons of Jupiter', subtitle: '', isbn_10: '0345316231',
             isbn_13: '9780345316233', description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Lucky Starr and Venus', subtitle: '', isbn_10: '0449234614', isbn_13: '9780449234617',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'David Starr', subtitle: '', isbn_10: '0345315413', isbn_13: '9780345315410', description: '',
             released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Lucky Starr and the Oceans of Venus', subtitle: '', isbn_10: '0345350103',
             isbn_13: '9780345350107', description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'An Easy Introduction to the Slide Rule.', subtitle: '', isbn_10: '0395065755',
             isbn_13: '9780395065754', description: '', released_on: '1993-01-01', publisher: houghton_mifflin_juv, author: asimov)
Book.create!(title: 'I, robot', subtitle: '', isbn_10: '0446670626', isbn_13: '9780446670623', description: '',
             released_on: '1993-01-01', publisher: warner_books, author: asimov)
Book.create!(title: 'How did we find out about Antarctica?', subtitle: '', isbn_10: '0802763715',
             isbn_13: '9780802763716', description: 'Describes the geography of the Antarctic regions and the history of their discovery and exploration.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about black holes?', subtitle: '', isbn_10: '0802763367',
             isbn_13: '9780802763365', description: 'Discusses why scientists believe in the existence of black holes, what they are, how they are formed, and how they are detected.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about black holes?', subtitle: '', isbn_10: '0802763375',
             isbn_13: '9780802763372', description: 'Discusses why scientists believe in the existence of black holes, what they are, how they are formed, and how they are detected.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about earthquakes?', subtitle: '', isbn_10: '0802763057',
             isbn_13: '9780802763051', description: "Traces the history of man's study of earthquakes, discusses what is currently known about these tremors, and explores the possibility of their prevention.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about earthquakes?', subtitle: '', isbn_10: '0802763065',
             isbn_13: '9780802763068', description: "Traces the history of man's study of earthquakes, discusses what is currently known about these tremors, and explores the possibility of their prevention.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about oil?', subtitle: '', isbn_10: '0802763804', isbn_13: '9780802763808',
             description: 'Describes the origin, composition, and historical and modern uses of petroleum.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about oil?', subtitle: '', isbn_10: '0802763812', isbn_13: '9780802763815',
             description: 'Describes the origin, composition, and historical and modern uses of petroleum.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about our human roots?', subtitle: '', isbn_10: '0802763618',
             isbn_13: '9780802763617', description: 'Traces the history of the study of early man and explains what this study has revealed about his roots.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about our human roots?', subtitle: '', isbn_10: '080276360X',
             isbn_13: '9780802763600', description: 'Traces the history of the study of early man and explains what this study has revealed about his roots.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The key word and other mysteries', subtitle: '', isbn_10: '0802763022', isbn_13: '9780802763020',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The key word and other mysteries', subtitle: '', isbn_10: '0802763030', isbn_13: '9780802763037',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The caves of steel', subtitle: '', isbn_10: '0553293400', isbn_13: '9780553293401',
             description: '', released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'Robots and empire', subtitle: '', isbn_10: '0586062009', isbn_13: '9780586062005',
             description: '', released_on: '1993-01-01', publisher: harpercollins, author: asimov)
Book.create!(title: 'The naked sun', subtitle: '', isbn_10: '0553293397', isbn_13: '9780553293395', description: '',
             released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'THE STARS, LIKE DUST', subtitle: '', isbn_10: '0345311949', isbn_13: '9780345311948',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'The robots of dawn', subtitle: '', isbn_10: '0553299492', isbn_13: '9780553299496',
             description: '', released_on: '1993-01-01', publisher: bantam_books_spectra, author: asimov)
Book.create!(title: 'Robot dreams', subtitle: '', isbn_10: '0441731546', isbn_13: '9780441731541', description: '',
             released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Robot Visions', subtitle: '', isbn_10: '0451450647', isbn_13: '9780451450647',
             description: 'From the writer whose name is synonymous with the science of robotics comes five decades of robot visions-36 landmark stories and essays, plus three rare tales-gathered together in one volume', released_on: '1993-01-01', publisher: roc, author: asimov)
Book.create!(title: 'Foundation and Earth', subtitle: '', isbn_10: '0553587579', isbn_13: '9780553587579',
             description: '', released_on: '1993-01-01', publisher: spectra, author: asimov)
Book.create!(title: "Foundation's edge", subtitle: '', isbn_10: '0553293389', isbn_13: '9780553293388',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Prelude to Foundation', subtitle: '', isbn_10: '0553278398', isbn_13: '9780553278392',
             description: '', released_on: '1993-01-01', publisher: spectra, author: asimov)
Book.create!(title: "Isaac Asimov's Utopia", subtitle: '', isbn_10: '0441002455', isbn_13: '9780441002450',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0553293370', isbn_13: '9780553293371',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Second foundation', subtitle: '', isbn_10: '0553293362', isbn_13: '9780553293364',
             description: '', released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0553293354', isbn_13: '9780553293357', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The return of the Black Widowers', subtitle: '', isbn_10: '0786712481', isbn_13: '9780786712489',
             description: '', released_on: '1993-01-01', publisher: carroll_graf, author: asimov)
Book.create!(title: 'The Union Club mysteries', subtitle: '', isbn_10: '0449205258', isbn_13: '9780449205259',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Banquets of the Black Widowers', subtitle: '', isbn_10: '0449209806', isbn_13: '9780449209806',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Casebook of the Black Widowers', subtitle: '', isbn_10: '0449243842', isbn_13: '9780449243848',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'More Tales of the Black Widowers', subtitle: '', isbn_10: '0449233758', isbn_13: '9780449233757',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Puzzles of the black widowers', subtitle: '', isbn_10: '0385262647', isbn_13: '9780385262644',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Asimov's Mysteries", subtitle: '', isbn_10: '0385090633', isbn_13: '9780385090636',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The neutrino', subtitle: '', isbn_10: '0380004836', isbn_13: '9780380004836', description: '',
             released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Fundacion', subtitle: '', isbn_10: '1400000823', isbn_13: '9781400000821', description: '',
             released_on: '1993-01-01', publisher: plaza_y_janes, author: asimov)
Book.create!(title: 'La Segunda Fundacion', subtitle: '', isbn_10: '8401496535', isbn_13: '9788401496530',
             description: '', released_on: '1993-01-01', publisher: plaza_janes_editor, author: asimov)
Book.create!(title: 'Opus', subtitle: '', isbn_10: '0586051287', isbn_13: '9780586051283', description: '',
             released_on: '1993-01-01', publisher: granada, author: asimov)
Book.create!(title: 'Foundation: The Psychohistorians', subtitle: '', isbn_10: '1559949228', isbn_13: '9781559949224',
             description: '', released_on: '1993-01-01', publisher: harper_audio, author: asimov)
Book.create!(title: 'The alternate Asimovs', subtitle: '', isbn_10: '0451153707', isbn_13: '9780451153708',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'William Shatner and Leonard Nimoy Read Four Science Fiction Classics: Foundation ', subtitle: '',
             isbn_10: '1559948841', isbn_13: '9781559948845', description: '', released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: 'Yo Robot', subtitle: '', isbn_10: '9500711796', isbn_13: '9789500711791', description: '',
             released_on: '1993-01-01', publisher: sudamericana, author: asimov)
Book.create!(title: 'Fundacion', subtitle: '', isbn_10: '8401491363', isbn_13: '9788401491368', description: '',
             released_on: '1993-01-01', publisher: bruguera, author: asimov)
Book.create!(title: 'The Bicentennial man and other stories', subtitle: '', isbn_10: '0385121989',
             isbn_13: '9780385121989', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The end of eternity', subtitle: '', isbn_10: '0575071184', isbn_13: '9780575071186',
             description: '', released_on: '1993-01-01', publisher: victor_gollancz, author: asimov)
Book.create!(title: 'PEBBLE IN THE SKY', subtitle: '', isbn_10: '0345311965', isbn_13: '9780345311962',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'THE CURRENTS OF SPACE', subtitle: '', isbn_10: '0345311957', isbn_13: '9780345311955',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Propios Dioses, Los', subtitle: '', isbn_10: '8401496608', isbn_13: '9788401496608',
             description: '', released_on: '1993-01-01', publisher: plaza_janes_editores_s_a, author: asimov)
Book.create!(title: 'Science fiction A to Z', subtitle: '', isbn_10: '039531285X', isbn_13: '9780395312858',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Words from the Myths', subtitle: '', isbn_10: '0395065682', isbn_13: '9780395065686',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin_company, author: asimov)
Book.create!(title: 'How did we find out about robots?', subtitle: '', isbn_10: '0802765637', isbn_13: '9780802765635',
             description: 'Traces the development of robots from the automatic clock to the microchip and discusses scientific and industrial uses of robots today.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'I, robot', subtitle: '', isbn_10: '0553803700', isbn_13: '9780553803709', description: '',
             released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'A distant puzzle', subtitle: '', isbn_10: '0836811364', isbn_13: '9780836811360', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'The moon', subtitle: '', isbn_10: '0836811313', isbn_13: '9780836811315', description: '',
             released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Our planet Earth', subtitle: '', isbn_10: '0836811941', isbn_13: '9780836811940', description: '',
             released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'The red planet', subtitle: '', isbn_10: '0836811321', isbn_13: '9780836811322', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'The sun and its secrets', subtitle: '', isbn_10: '0836811356', isbn_13: '9780836811353',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Young star travelers', subtitle: '', isbn_10: '0060201797', isbn_13: '9780060201791',
             description: 'A collection of nine science fiction stories about children who have traveled in space.', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'Young star travelers', subtitle: '', isbn_10: '0060201789', isbn_13: '9780060201784',
             description: 'A collection of nine science fiction stories about children who have traveled in space.', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'The robot collection', subtitle: '', isbn_10: '0385191529', isbn_13: '9780385191524',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Understanding physics', subtitle: '', isbn_10: '0880292512', isbn_13: '9780880292511',
             description: '', released_on: '1993-01-01', publisher: dorset_press, author: asimov)
Book.create!(title: 'Atom', subtitle: '', isbn_10: '0452268346', isbn_13: '9780452268340', description: '',
             released_on: '1993-01-01', publisher: plume_a01, author: asimov)
Book.create!(title: 'Understanding Physics', subtitle: '', isbn_10: '0451626354', isbn_13: '9780451626356',
             description: '', released_on: '1993-01-01', publisher: new_amer_library_mm, author: asimov)
Book.create!(title: 'Asimov on Physics', subtitle: '', isbn_10: '0380418487', isbn_13: '9780380418480',
             description: '', released_on: '1993-01-01', publisher: avon_books_mm, author: asimov)
Book.create!(title: "Isaac Asimov's Book of Facts", subtitle: '', isbn_10: '0517065037', isbn_13: '9780517065037',
             description: "Isaac Asimov was unquestionably one of America's greatest scientific writers--from his mind came the awe-inspiring Foundation trilogy and the classic I, Robot. It hardly comes as a surprise then, that the brain of Asimov was overflowing with facts, statistics, and millions of trivial tidbits. His Book of Facts comprises 3,000 of these little information snippets. To organize this wealth of data are distinct subject areas--ranging from chapters titled Art and Medicine to more obscure ones such as Salty Facts and the amusing Strange Rules, Laws and Customs. Did you know, for instance, that the Tinguian people of the Philippines have a very unique way of kissing? They put their lips close to each other's faces, and then quickly inhale. Or that in the Middle Ages the Europeans put their disobedient animals on trial? Well, you know now! Asimov's Books of Facts immerses the reader into a humongous vat of information. Asimov feeds the brain. --Naomi Gesinger", released_on: '1993-01-01', publisher: gramercy, author: asimov)
Book.create!(title: 'Understanding Physics', subtitle: '', isbn_10: '0451626621', isbn_13: '9780451626622',
             description: '', released_on: '1993-01-01', publisher: new_amer_library_mm, author: asimov)
Book.create!(title: "Isaac Asimov's Treasury of Humor", subtitle: '', isbn_10: '0395572266', isbn_13: '9780395572269',
             description: "640 jokes, anecdotes, and limericks, complete with notes on how to tell them, from America's leading renaissance man.", released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Asimov on numbers', subtitle: '', isbn_10: '0517371456', isbn_13: '9780517371459',
             description: '', released_on: '1993-01-01', publisher: bell_pub_co, author: asimov)
Book.create!(title: 'Asimov Laughs Again ', subtitle: '', isbn_10: '0060924489', isbn_13: '9780060924485',
             description: "Here are more than 700 of Isaac Asimov's favorite jokes, cleverest limericks and funniest stories.", released_on: '1993-01-01', publisher: perennial, author: asimov)
Book.create!(title: 'Asimov on astronomy', subtitle: '', isbn_10: '051727924X', isbn_13: '9780517279243',
             description: '', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'World of Carbon', subtitle: '', isbn_10: '0020913508', isbn_13: '9780020913504', description: '',
             released_on: '1993-01-01', publisher: macmillan_pub_co_a02, author: asimov)
Book.create!(title: 'Realm of Numbers', subtitle: '', isbn_10: '0449243990', isbn_13: '9780449243992', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Limericks', subtitle: '', isbn_10: '0517208822', isbn_13: '9780517208823', description: '',
             released_on: '1993-01-01', publisher: gramercy_books, author: asimov)
Book.create!(title: 'World of Nitrogen', subtitle: '', isbn_10: '0020914008', isbn_13: '9780020914006',
             description: '', released_on: '1993-01-01', publisher: macmillan_publishing_company, author: asimov)
Book.create!(title: 'Realm of Measure.', subtitle: '', isbn_10: '039506564X', isbn_13: '9780395065648',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin_juv, author: asimov)
Book.create!(title: 'Realm of Algebra', subtitle: '', isbn_10: '0449243982', isbn_13: '9780449243985', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Yours, Isaac Asimov', subtitle: '', isbn_10: '0385476221', isbn_13: '9780385476225',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'I, Robot : The Illustrated Screenplay', subtitle: '', isbn_10: '0743486595',
             isbn_13: '9780743486590', description: "Until the recent announcement of the Will Smith/Alex Proyas collaboration scheduled for release in 2004, numerous attempts had been made to adapt Isaac Asimov's classic story-cycle, I, Robot, to the motion picture medium. All efforts failed. In 1977, producers approached multiple-award-winning author Harlan Ellison to take a crack at this impossible project. He accepted, and produced an astonishing screenplay that Asimov felt would be The first really adult, complex, worthwhile science fiction movie ever made. That screenplay is presented here in book format, brought to scintillating life by the illustrations of artist Mark Zug. After you read it, then decide: Is this not the greatest science fiction movie never made?", released_on: '1993-01-01', publisher: i_books, author: asimov)
Book.create!(title: 'The Mammoth book of vintage science fiction', subtitle: '', isbn_10: '088184621X',
             isbn_13: '9780881846218', description: '', released_on: '1993-01-01', publisher: carroll_graf_pub_inc_a01, author: asimov)
Book.create!(title: 'Saturn: The Ringed Beauty', subtitle: '', isbn_10: '1555323642', isbn_13: '9781555323646',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Fifty short science fiction tales', subtitle: '', isbn_10: '0020163908', isbn_13: '9780020163909',
             description: '', released_on: '1993-01-01', publisher: collier_books, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0385050453', isbn_13: '9780385050456',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Frontiers', subtitle: '', isbn_10: '0749307684', isbn_13: '9780749307684', description: '',
             released_on: '1993-01-01', publisher: mandarin, author: asimov)
Book.create!(title: "Isaac Asimov's robot mystery mirage", subtitle: '', isbn_10: '0671039105',
             isbn_13: '9780671039103', description: '', released_on: '1993-01-01', publisher: ibooks, author: asimov)
Book.create!(title: 'Nine tomorrows', subtitle: '', isbn_10: '0385053142', isbn_13: '9780385053143', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Magic', subtitle: '', isbn_10: '0061052051', isbn_13: '9780061052057', description: '',
             released_on: '1993-01-01', publisher: harperprism, author: asimov)
Book.create!(title: 'Gold', subtitle: '', isbn_10: '006105206X', isbn_13: '9780061052064', description: '',
             released_on: '1993-01-01', publisher: harperprism, author: asimov)
Book.create!(title: "Isaac Asimov's christmas", subtitle: '', isbn_10: '0441004911', isbn_13: '9780441004911',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Tin stars', subtitle: '', isbn_10: '0451143957', isbn_13: '9780451143952', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'A choice of catastrophes', subtitle: '', isbn_10: '0449900487', isbn_13: '9780449900482',
             description: '', released_on: '1993-01-01', publisher: fawcett_columbine, author: asimov)
Book.create!(title: 'The complete robot', subtitle: '', isbn_10: '0586057242', isbn_13: '9780586057247',
             description: '', released_on: '1993-01-01', publisher: harper_collins, author: asimov)
Book.create!(title: 'How did we find out the earth is round?', subtitle: '', isbn_10: '0802761224',
             isbn_13: '9780802761224', description: 'Discusses the theories that led to the discovery that the earth was round.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out the earth is round?', subtitle: '', isbn_10: '0802761216',
             isbn_13: '9780802761217', description: 'Discusses the theories that led to the discovery that the earth was round.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about electricity?', subtitle: '', isbn_10: '0802761240',
             isbn_13: '9780802761248', description: "Traces man's knowledge and use of electricity from early Greek experiments to the invention of the telegraph, telephone, and electric light.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about electricity?', subtitle: '', isbn_10: '0802761232',
             isbn_13: '9780802761231', description: "Traces man's knowledge and use of electricity from early Greek experiments to the invention of the telegraph, telephone, and electric light.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about dinosaurs?', subtitle: '', isbn_10: '0802761348',
             isbn_13: '9780802761347', description: "Traces the history of man's study of fossils and explains what this study has enabled him to learn about the dinosaurs.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about dinosaurs?', subtitle: '', isbn_10: '080276133X',
             isbn_13: '9780802761330', description: "Traces the history of man's study of fossils and explains what this study has enabled him to learn about the dinosaurs.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Isaac Asimov's The Rocky Planets", subtitle: '', isbn_10: '1561444278', isbn_13: '9781561444274',
             description: '', released_on: '1993-01-01', publisher: modern_publishing, author: asimov)
Book.create!(title: 'The Naked Sun', subtitle: '', isbn_10: '0449238059', isbn_13: '9780449238059',
             description: "The planet Solaria could destroy earth in two seconds flat but one of the planet's most eminent scientists has been brutally murdered. Only Earth's most famous detective, Elijah Baley, can solve this dark, baffling mystery. Science Fiction at its best.", released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'CAVES OF STEEL', subtitle: '', isbn_10: '0449237826', isbn_13: '9780449237823', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'The currents of space', subtitle: '', isbn_10: '0449238296', isbn_13: '9780449238295',
             description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'Mars, the Red Planet', subtitle: '', isbn_10: '0688418120', isbn_13: '9780688418120',
             description: 'A study of Mars from the earliest discoveries of its distance, size, and satellites to recent data gathered during the Viking probes.', released_on: '1993-01-01', publisher: lothrop_lee_shepard_co, author: asimov)
Book.create!(title: 'Mars, the Red Planet', subtitle: '', isbn_10: '0688518125', isbn_13: '9780688518127',
             description: 'A study of Mars from the earliest discoveries of its distance, size, and satellites to recent data gathered during the Viking probes.', released_on: '1993-01-01', publisher: lothrop_lee_shepard_co, author: asimov)
Book.create!(title: 'Nightfall', subtitle: '', isbn_10: '0553290991', isbn_13: '9780553290998', description: '',
             released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'Gold', subtitle: '', isbn_10: '0061054097', isbn_13: '9780061054099', description: '',
             released_on: '1993-01-01', publisher: harperprism, author: asimov)
Book.create!(title: 'Magic', subtitle: '', isbn_10: '0061054127', isbn_13: '9780061054129',
             description: 'A collection of stories, mixing fiction and non-fiction. Most of the fiction pieces belong to a series about a man and his demon, while the non-fiction pieces discuss the craft of science fiction and fantasy writing. The author analyzes the work of famous writers, including his own.', released_on: '1993-01-01', publisher: harperprism, author: asimov)
Book.create!(title: 'The 21st century in space', subtitle: '', isbn_10: '0836812948', isbn_13: '9780836812947',
             description: 'Projects astronomical and astronautical possibilities for the future, such as huge telescopes, airplanes in space, a probe to the sun, and a landing on Mars.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Aliens and extraterrestrials', subtitle: '', isbn_10: '0836812204', isbn_13: '9780836812206',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Astronomy projects', subtitle: '', isbn_10: '0836812298', isbn_13: '9780836812299',
             description: 'Presents a variety of astronomy projects, including creative writing and drawing assignments, modelmaking, sky observation, and experiments.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Discovering comets and meteors', subtitle: '', isbn_10: '0836812301', isbn_13: '9780836812305',
             description: 'Discusses the characteristics of comets and meteors and cites both famous appearances and unexplained mysteries connected with them.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'A distant giant', subtitle: '', isbn_10: '083681231X', isbn_13: '9780836812312',
             description: 'Describes the characteristics and movements of the planet Neptune and how we found out about it.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'A double planet?', subtitle: '', isbn_10: '0836812328', isbn_13: '9780836812329',
             description: 'Discusses the smallest, most distant, and most mysterious planet in our solar system, its discovery, its peculiar orbit, and its recently discovered satellite.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: "Earth's twin", subtitle: '', isbn_10: '0836812336', isbn_13: '9780836812336',
             description: 'Describes the characteristics of the planet Venus and how we discovered them', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Folklore and legends of the universe', subtitle: '', isbn_10: '0836812344',
             isbn_13: '9780836812343', description: 'Presents beliefs of ancient peoples about the universe.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Global space programs', subtitle: '', isbn_10: '0836812352', isbn_13: '9780836812350',
             description: 'Examines the contributions of various nations and cultures to the exploration of space.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: "Isaac Asimov's New library of the universe", subtitle: '', isbn_10: '0836812379',
             isbn_13: '9780836812374', description: "This index volume is a guide to the other thirty-three volumes of Isaac Asimov's New Library of the Universe.", released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Modern astronomy', subtitle: '', isbn_10: '0836812360', isbn_13: '9780836812367',
             description: 'Offers an account of how scientists and amateurs use instruments such as space telescopes, computers, radio telescopes, and binoculars to study the universe.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Nearest the sun', subtitle: '', isbn_10: '0836812212', isbn_13: '9780836812213', description: '',
             released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Planet of extremes--Jupiter', subtitle: '', isbn_10: '0836812220', isbn_13: '9780836812220',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'The ringed planet', subtitle: '', isbn_10: '0836812239', isbn_13: '9780836812237',
             description: '', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Science fiction', subtitle: '', isbn_10: '0836812247', isbn_13: '9780836812244', description: '',
             released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Space colonies', subtitle: '', isbn_10: '0836812255', isbn_13: '9780836812251', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Space explorers', subtitle: '', isbn_10: '0836812263', isbn_13: '9780836812268', description: '',
             released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Star cycles', subtitle: '', isbn_10: '0836812271', isbn_13: '9780836812275', description: '',
             released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Miniature Mysteries', subtitle: '', isbn_10: '0800852524', isbn_13: '9780800852528',
             description: '', released_on: '1993-01-01', publisher: parkwest_publications, author: asimov)
Book.create!(title: 'Nine tomorrows', subtitle: '', isbn_10: '0330201719', isbn_13: '9780330201711', description: '',
             released_on: '1993-01-01', publisher: pan, author: asimov)
Book.create!(title: 'The complete adventures of Lucky Starr', subtitle: '', isbn_10: '0739419412',
             isbn_13: '9780739419410', description: '', released_on: '1993-01-01', publisher: sfbc, author: asimov)
Book.create!(title: '100 great fantasy short short stories', subtitle: '', isbn_10: '0385181655',
             isbn_13: '9780385181655', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Le Cycle de Fondation, tome 4 ', subtitle: '', isbn_10: '2070416461', isbn_13: '9782070416462',
             description: '', released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'Catastrophies', subtitle: '', isbn_10: '0449244253', isbn_13: '9780449244258', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Forward the foundation', subtitle: '', isbn_10: '0385247931', isbn_13: '9780385247931',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Foundation and earth', subtitle: '', isbn_10: '0345339967', isbn_13: '9780345339966',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Young extraterrestrials', subtitle: '', isbn_10: '0060201673', isbn_13: '9780060201678',
             description: '', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'Young extraterrestrials', subtitle: '', isbn_10: '0060201681', isbn_13: '9780060201685',
             description: '', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'Young monsters', subtitle: '', isbn_10: '006020169X', isbn_13: '9780060201692',
             description: 'A collection of stories by a variety of authors about young people with one common characteristic--they are all monsters.', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'Young monsters', subtitle: '', isbn_10: '0060201703', isbn_13: '9780060201708',
             description: 'A collection of stories by a variety of authors about young people with one common characteristic--they are all monsters.', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'Young ghosts', subtitle: '', isbn_10: '0060201711', isbn_13: '9780060201715',
             description: 'Includes twelve tales involving young ghosts by a variety of authors.', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'Young ghosts', subtitle: '', isbn_10: '006020172X', isbn_13: '9780060201722',
             description: 'Includes twelve tales involving young ghosts by a variety of authors.', released_on: '1993-01-01', publisher: harper_row, author: asimov)
Book.create!(title: 'How did we find out about DNA?', subtitle: '', isbn_10: '0802766048', isbn_13: '9780802766045',
             description: 'Describes the discovery of deoxyribonucleic acid, or DNA, a complex molecule found in all cells and which plays a vital part in heredity.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about DNA?', subtitle: '', isbn_10: '0802765963', isbn_13: '9780802765963',
             description: 'Describes the discovery of deoxyribonucleic acid, or DNA, a complex molecule found in all cells and which plays a vital part in heredity.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about blood?', subtitle: '', isbn_10: '0802766498', isbn_13: '9780802766496',
             description: 'Traces the development of scientific knowledge about the functions of blood in the body, from beliefs held by the ancient Greeks to discoveries in more modern times.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about blood?', subtitle: '', isbn_10: '0802766471', isbn_13: '9780802766472',
             description: 'Traces the development of scientific knowledge about the functions of blood in the body, from beliefs held by the ancient Greeks to discoveries in more modern times.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The Early Asimov', subtitle: '', isbn_10: '044902850X', isbn_13: '9780449028506', description: '',
             released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'Little lost robot', subtitle: '', isbn_10: '0521217172', isbn_13: '9780521217170',
             description: '', released_on: '1993-01-01', publisher: cambridge_university_press, author: asimov)
Book.create!(title: 'The positronic man', subtitle: '', isbn_10: '0385263422', isbn_13: '9780385263429',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Second foundation', subtitle: '', isbn_10: '0345336291', isbn_13: '9780345336293',
             description: '', released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'The robots of dawn', subtitle: '', isbn_10: '0345315715', isbn_13: '9780345315717',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0345336275', isbn_13: '9780345336279', description: '',
             released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'More tales of the black Widowers', subtitle: '', isbn_10: '0385111762', isbn_13: '9780385111768',
             description: '', released_on: '1993-01-01', publisher: published_for_the_crime_cl_a01, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '038505047X', isbn_13: '9780385050470', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Le Cycle de Fondation, tome 1 : Fondation', subtitle: '', isbn_10: '2070415708',
             isbn_13: '9782070415700', description: '', released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'The naked sun', subtitle: '', isbn_10: '0345338219', isbn_13: '9780345338211', description: '',
             released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Today and Tomorrow And...', subtitle: '', isbn_10: '0440159334', isbn_13: '9780440159339',
             description: '', released_on: '1993-01-01', publisher: dell_publishing_company, author: asimov)
Book.create!(title: 'The Foundation trilogy', subtitle: '', isbn_10: '0905712617', isbn_13: '9780905712611',
             description: '', released_on: '1993-01-01', publisher: octopus_heinemann, author: asimov)
Book.create!(title: 'The Foundation trilogy', subtitle: '', isbn_10: '0385188307', isbn_13: '9780385188302',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Far as human eye could see', subtitle: '', isbn_10: '0385235143', isbn_13: '9780385235143',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Far As Human Eye Could See', subtitle: '', isbn_10: '155817107X', isbn_13: '9781558171077',
             description: '', released_on: '1993-01-01', publisher: pinnacle_books, author: asimov)
Book.create!(title: 'The Future i', subtitle: '', isbn_10: '0449243664', isbn_13: '9780449243664', description: '',
             released_on: '1993-01-01', publisher: fawcett_crest_books, author: asimov)
Book.create!(title: 'NIGHTFALL & OTHER STOR', subtitle: '', isbn_10: '0345310918', isbn_13: '9780345310910',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Robots', subtitle: '', isbn_10: '0451159268', isbn_13: '9780451159267', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Isaac Asimov presents the golden age of science fiction', subtitle: '', isbn_10: '0517657546',
             isbn_13: '9780517657546', description: '', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'Space shuttles', subtitle: '', isbn_10: '0451150171', isbn_13: '9780451150172', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction 16', subtitle: '', isbn_10: '0886772001',
             isbn_13: '9780886772000', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Invasions', subtitle: '', isbn_10: '0451450272', isbn_13: '9780451450272', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Space mail', subtitle: '', isbn_10: '0449243125', isbn_13: '9780449243121', description: '',
             released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'The Winds of Change', subtitle: '', isbn_10: '0345311884', isbn_13: '9780345311887',
             description: 'Asimov at his best! A 21-story salute featuring:* A levitating professor* Alien traders bringing something to sell* A black hole hurtling toward Earth* The universe being created* And many other matters of great import!', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Atlantis', subtitle: '', isbn_10: '0451151445', isbn_13: '9780451151445', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'A whiff of death', subtitle: '', isbn_10: '0449214613', isbn_13: '9780449214619', description: '',
             released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'THE MARTIAN WAY', subtitle: '', isbn_10: '0345325877', isbn_13: '9780345325877', description: '',
             released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction 19', subtitle: '', isbn_10: '0886773261',
             isbn_13: '9780886773267', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: "Foundation's edge", subtitle: '', isbn_10: '0586058397', isbn_13: '9780586058398',
             description: '', released_on: '1993-01-01', publisher: granada_panther, author: asimov)
Book.create!(title: 'The Genetic Code', subtitle: '', isbn_10: '0451616596', isbn_13: '9780451616593', description: '',
             released_on: '1993-01-01', publisher: signet, author: asimov)
Book.create!(title: 'All the troubles of the world', subtitle: '', isbn_10: '0886822335', isbn_13: '9780886822330',
             description: 'Multivac, the gigantic computer that controls the entire world and can even predict the probabilities of potential crimes before they happen, suddenly announces that someone is plotting to destroy Multivac.', released_on: '1993-01-01', publisher: creative_education, author: asimov)
Book.create!(title: 'The early Asimov, or, Eleven years of trying', subtitle: '', isbn_10: '0385039794',
             isbn_13: '9780385039796', description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The Early Asimov; Or, Eleven Years of Trying: Vol.1', subtitle: '', isbn_10: '058603806X',
             isbn_13: '9780586038062', description: '', released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: 'The Early Asimov ; Or, Eleven Years of Trying: Vol.2', subtitle: '', isbn_10: '0586039368',
             isbn_13: '9780586039366', description: '', released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: 'The edge of tomorrow', subtitle: '', isbn_10: '0812531221', isbn_13: '9780812531220',
             description: '', released_on: '1993-01-01', publisher: t_doherty_associates, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0345336283', isbn_13: '9780345336286',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'The Asimov Chronicles', subtitle: '', isbn_10: '0441031099', isbn_13: '9780441031092',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: "The planet that wasn't", subtitle: '', isbn_10: '0380018136', isbn_13: '9780380018130',
             description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'BEGINNING AND END', subtitle: '', isbn_10: '0671821350', isbn_13: '9780671821357',
             description: '', released_on: '1993-01-01', publisher: pocket, author: asimov)
Book.create!(title: 'The Best Science Fiction of Isaac Asimov', subtitle: '', isbn_10: '0451450698',
             isbn_13: '9780451450692', description: '', released_on: '1993-01-01', publisher: roc, author: asimov)
Book.create!(title: 'The ugly little boy', subtitle: '', isbn_10: '0385263430', isbn_13: '9780385263436',
             description: '', released_on: '1993-01-01', publisher: foundation_book, author: asimov)
Book.create!(title: 'Nemesis', subtitle: '', isbn_10: '0553286285', isbn_13: '9780553286281', description: '',
             released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: 'The Birth of the United States, 1763-1816', subtitle: '', isbn_10: '023477178X',
             isbn_13: '9780234771785', description: '', released_on: '1993-01-01', publisher: dobson_books, author: asimov)
Book.create!(title: "Asimov's mysteries", subtitle: '', isbn_10: '0449210758', isbn_13: '9780449210758',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'How did we find out about lasers?', subtitle: '', isbn_10: '0802769357', isbn_13: '9780802769350',
             description: 'Discusses lasers, how they work, and their many uses.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about lasers?', subtitle: '', isbn_10: '0802769365', isbn_13: '9780802769367',
             description: 'Discusses lasers, how they work, and their many uses.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The Gods Themselves.', subtitle: '', isbn_10: '038502701X', isbn_13: '9780385027014',
             description: 'Winner of the Hugo Award and Nebula Award.', released_on: '1993-01-01', publisher: doubleday_books, author: asimov)
Book.create!(title: 'A Whiff of death', subtitle: '', isbn_10: '0449236609', isbn_13: '9780449236604', description: '',
             released_on: '1993-01-01', publisher: fawcett_publications, author: asimov)
Book.create!(title: 'Beginnings', subtitle: '', isbn_10: '0425115860', isbn_13: '9780425115862', description: '',
             released_on: '1993-01-01', publisher: berkley_books, author: asimov)
Book.create!(title: 'NAKED SUN', subtitle: '', isbn_10: '0449226484', isbn_13: '9780449226483', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'The Astounding Science Fiction Anthology', subtitle: '', isbn_10: '4025008750',
             isbn_13: '9784025008753', description: 'Science-Fiction', released_on: '1993-01-01', publisher: berkley_books, author: asimov)
Book.create!(title: 'The gods themselves', subtitle: '', isbn_10: '0345337786', isbn_13: '9780345337788',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Le Cycle de Fondation, tome 2 ', subtitle: '', isbn_10: '2070415716', isbn_13: '9782070415717',
             description: '', released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'FOUNDATION', subtitle: '', isbn_10: '034531798X', isbn_13: '9780345317988',
             description: "Foundation marks the first of a series of tales set so far in the future that Earth is all but forgotten by humans who live throughout the galaxy. Yet all is not well with the Galactic Empire. Its vast size is crippling to it. In particular, the administrative planet, honeycombed and tunneled with offices and staff, is vulnerable to attack or breakdown. The only person willing to confront this imminent catastrophe is Hari Seldon, a psychohistorian and mathematician. Seldon can scientifically predict the future, and it doesn't look pretty: a new Dark Age is scheduled to send humanity into barbarism in 500 years. He concocts a scheme to save the knowledge of the race in an Encyclopedia Galactica. But this project will take generations to complete, and who will take up the torch after him? The first Foundation trilogy (Foundation, Foundation and Empire, Second Foundation) won a Hugo Award in 1965 for Best All-Time Series. It's science fiction on the grand scale; one of the classics of the field. --Brooks Peck", released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'The complete stories', subtitle: '', isbn_10: '0385420781', isbn_13: '9780385420785',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The Best Mysteries of Isaac Asimov', subtitle: '', isbn_10: '0449132870',
             isbn_13: '9780449132876', description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'The subatomic monster', subtitle: '', isbn_10: '0451625307', isbn_13: '9780451625304',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'The Empire novels', subtitle: '', isbn_10: '0739431056', isbn_13: '9780739431054',
             description: 'Ominbus of The Stars, Like Dust, The Currents of Space, and Pebble in the Sky. Special publication of the Science Fiction Book Club.', released_on: '1993-01-01', publisher: science_fiction_book_club, author: asimov)
Book.create!(title: 'Tales of the Black Widowers', subtitle: '', isbn_10: '057501895X', isbn_13: '9780575018952',
             description: '', released_on: '1993-01-01', publisher: gollancz, author: asimov)
Book.create!(title: 'Prelude to foundation', subtitle: '', isbn_10: '0586071113', isbn_13: '9780586071113',
             description: '', released_on: '1993-01-01', publisher: grafton, author: asimov)
Book.create!(title: 'The tragedy of the moon', subtitle: '', isbn_10: '0340198796', isbn_13: '9780340198797',
             description: '', released_on: '1993-01-01', publisher: coronet, author: asimov)
Book.create!(title: "Asimov's choice", subtitle: '', isbn_10: '0895590220', isbn_13: '9780895590220', description: '',
             released_on: '1993-01-01', publisher: dale_books, author: asimov)
Book.create!(title: 'The asteroids', subtitle: '', isbn_10: '0732248485', isbn_13: '9780732248482', description: '',
             released_on: '1993-01-01', publisher: collins_australia, author: asimov)
Book.create!(title: 'Did comets kill the dinosaurs?', subtitle: '', isbn_10: '073224840X', isbn_13: '9780732248406',
             description: '', released_on: '1993-01-01', publisher: collins_australia, author: asimov)
Book.create!(title: "The earth's moon", subtitle: '', isbn_10: '0732248450', isbn_13: '9780732248451', description: '',
             released_on: '1993-01-01', publisher: collins_australia, author: asimov)
Book.create!(title: 'Our solar system', subtitle: '', isbn_10: '0732248442', isbn_13: '9780732248444', description: '',
             released_on: '1993-01-01', publisher: collins_australia, author: asimov)
Book.create!(title: 'Quasars, pulsars, and black holes', subtitle: '', isbn_10: '0732248493', isbn_13: '9780732248499',
             description: '', released_on: '1993-01-01', publisher: collins_australia, author: asimov)
Book.create!(title: 'Station Gehenna', subtitle: '', isbn_10: '0865531919', isbn_13: '9780865531918', description: '',
             released_on: '1993-01-01', publisher: congdon_weed_in_association_wi, author: asimov)
Book.create!(title: 'Sin of origin', subtitle: '', isbn_10: '0865531951', isbn_13: '9780865531956', description: '',
             released_on: '1993-01-01', publisher: congdon_weed, author: asimov)
Book.create!(title: 'A different flesh', subtitle: '', isbn_10: '0865531986', isbn_13: '9780865531987',
             description: '', released_on: '1993-01-01', publisher: congdon_weed, author: asimov)
Book.create!(title: 'Antibodies', subtitle: '', isbn_10: '0865531994', isbn_13: '9780865531994', description: '',
             released_on: '1993-01-01', publisher: congdon_weed_in_association_wi, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0345317998', isbn_13: '9780345317995',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Words of Science', subtitle: '', isbn_10: '0451615506', isbn_13: '9780451615503', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Forward the Foundation', subtitle: '', isbn_10: '0553404881', isbn_13: '9780553404883',
             description: '', released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: 'The early Asimov', subtitle: '', isbn_10: '0345325907', isbn_13: '9780345325907', description: '',
             released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'The early Asimov', subtitle: '', isbn_10: '0345325893', isbn_13: '9780345325891', description: '',
             released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'The New Hugo winners', subtitle: '', isbn_10: '0671721038', isbn_13: '9780671721039',
             description: '', released_on: '1993-01-01', publisher: baen_books, author: asimov)
Book.create!(title: 'The New Hugo winners', subtitle: '', isbn_10: '0671720813', isbn_13: '9780671720810',
             description: '', released_on: '1993-01-01', publisher: baen_books, author: asimov)
Book.create!(title: 'The super Hugos', subtitle: '', isbn_10: '0671721356', isbn_13: '9780671721350', description: '',
             released_on: '1993-01-01', publisher: baen_books, author: asimov)
Book.create!(title: 'Agent of Byzantium', subtitle: '', isbn_10: '0865531838', isbn_13: '9780865531833',
             description: '', released_on: '1993-01-01', publisher: congdon_weed_in_association_wi, author: asimov)
Book.create!(title: 'Isaac Asimov presents Through darkest America', subtitle: '', isbn_10: '0865531846',
             isbn_13: '9780865531840', description: '', released_on: '1993-01-01', publisher: congdon_weed, author: asimov)
Book.create!(title: 'Isaac Asimov presents The man who pulled down the sky', subtitle: '', isbn_10: '0865531854',
             isbn_13: '9780865531857', description: '', released_on: '1993-01-01', publisher: congdon_weed, author: asimov)
Book.create!(title: 'Isaac Asimov presents Caliban landing', subtitle: '', isbn_10: '0865531889',
             isbn_13: '9780865531888', description: '', released_on: '1993-01-01', publisher: congdon_weed, author: asimov)
Book.create!(title: 'Pennterra', subtitle: '', isbn_10: '0865531897', isbn_13: '9780865531895', description: '',
             released_on: '1993-01-01', publisher: congdon_weed_in_association_wi, author: asimov)
Book.create!(title: 'Cosmic critiques', subtitle: '', isbn_10: '0898793947', isbn_13: '9780898793949', description: '',
             released_on: '1993-01-01', publisher: writers_digest_books, author: asimov)
Book.create!(title: 'The ends of the Earth', subtitle: '', isbn_10: '0679401237', isbn_13: '9780679401230',
             description: '', released_on: '1993-01-01', publisher: weybright_and_talley, author: asimov)
Book.create!(title: 'The relativity of wrong', subtitle: '', isbn_10: '0385244738', isbn_13: '9780385244732',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Robot dreams', subtitle: '', isbn_10: '0441011837', isbn_13: '9780441011834', description: '',
             released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'The Roving Mind', subtitle: '', isbn_10: '1573921815', isbn_13: '9781573921817', description: '',
             released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'CURRENTS OF SPACE, THE', subtitle: '', isbn_10: '0553293419', isbn_13: '9780553293418',
             description: '', released_on: '1993-01-01', publisher: spectra, author: asimov)
Book.create!(title: 'Le robot qui revait', subtitle: '', isbn_10: '2290317152', isbn_13: '9782290317150',
             description: '', released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: 'Of Time and Space and Other Things', subtitle: '', isbn_10: '0380003252',
             isbn_13: '9780380003259', description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Adding a dimension', subtitle: '', isbn_10: '0380002787', isbn_13: '9780380002788',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Opus 200', subtitle: '', isbn_10: '039527625X', isbn_13: '9780395276259', description: '',
             released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'The stars in their courses', subtitle: '', isbn_10: '0586041222', isbn_13: '9780586041222',
             description: '', released_on: '1993-01-01', publisher: panther, author: asimov)
Book.create!(title: 'NIGHTFALL AND STORIES', subtitle: '', isbn_10: '0449236722', isbn_13: '9780449236727',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'The caves of steel', subtitle: '', isbn_10: '0345338200', isbn_13: '9780345338204',
             description: '', released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: "Asimov's Mysteries", subtitle: '', isbn_10: '0440013070', isbn_13: '9780440013075',
             description: 'Science-Fiction short stories', released_on: '1993-01-01', publisher: dell, author: asimov)
Book.create!(title: 'Beyond the stars', subtitle: '', isbn_10: '0727813749', isbn_13: '9780727813749', description: '',
             released_on: '1993-01-01', publisher: severn_house, author: asimov)
Book.create!(title: 'Bicentennial Man', subtitle: '', isbn_10: '1857989325', isbn_13: '9781857989328',
             description: "This classic collection includes the title story, acclaimed as Asimov's single finest Robot tale, and now made into a Hollywood movie starring Robin Williams. Each of the eleven stories here sparkle with characteristic Asimov inventiveness and imagination.", released_on: '1993-01-01', publisher: orion_pub_co, author: asimov)
Book.create!(title: 'Feeling of Power /#20056/1 Cassette', subtitle: '', isbn_10: '9998070015',
             isbn_13: '9789998070011', description: '', released_on: '1993-01-01', publisher: bookthrift_co, author: asimov)
Book.create!(title: "Foundation's fear", subtitle: '', isbn_10: '0061052434', isbn_13: '9780061052439',
             description: '', released_on: '1993-01-01', publisher: harperprism, author: asimov)
Book.create!(title: 'The relativity of wrong', subtitle: '', isbn_10: '0192826328', isbn_13: '9780192826329',
             description: '', released_on: '1993-01-01', publisher: oxford_university_press, author: asimov)
Book.create!(title: 'I, robot', subtitle: '', isbn_10: '0234770074', isbn_13: '9780234770078', description: '',
             released_on: '1993-01-01', publisher: dennis_dobson, author: asimov)
Book.create!(title: 'From earth to heaven', subtitle: '', isbn_10: '0234770457', isbn_13: '9780234770450',
             description: '', released_on: '1993-01-01', publisher: d_dobson_a01, author: asimov)
Book.create!(title: 'Alien tongue', subtitle: '', isbn_10: '055328875X', isbn_13: '9780553288759', description: '',
             released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(
  title: "Why I left Harry's all-night hamburgers, and other stories from Isaac Asimov's science fiction magazine", subtitle: '', isbn_10: '0385300441', isbn_13: '9780385300445', description: '', released_on: '1993-01-01', publisher: delacorte_press, author: asimov
)
Book.create!(title: 'A choice of catastrophes', subtitle: '', isbn_10: '0099265702', isbn_13: '9780099265702',
             description: '', released_on: '1993-01-01', publisher: arrow, author: asimov)
Book.create!(title: 'Tales of the Black Widowers', subtitle: '', isbn_10: '0449237885', isbn_13: '9780449237885',
             description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'The universe', subtitle: '', isbn_10: '080270316X', isbn_13: '9780802703163', description: '',
             released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Isaac Asimov's I-bots", subtitle: '', isbn_10: '0061055395', isbn_13: '9780061055393',
             description: '', released_on: '1993-01-01', publisher: harperprism, author: asimov)
Book.create!(title: "The 1989 Annual World's Best SF", subtitle: '', isbn_10: '0886773539', isbn_13: '9780886773533',
             description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Galaxies', subtitle: '', isbn_10: '0695433156', isbn_13: '9780695433154', description: '',
             released_on: '1993-01-01', publisher: follett, author: asimov)
Book.create!(title: 'Le Cycle de Fondation, tome 3 ', subtitle: '', isbn_10: '2070416119', isbn_13: '9782070416110',
             description: '', released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'Sucker Bait/Un-Man/to the Storming Gulf', subtitle: '', isbn_10: '155785016X',
             isbn_13: '9781557850164', description: '', released_on: '1993-01-01', publisher: bart_books, author: asimov)
Book.create!(title: "L'aube de Fondation", subtitle: '', isbn_10: '2266067338', isbn_13: '9782266067331',
             description: '', released_on: '1993-01-01', publisher: pocket, author: asimov)
Book.create!(title: 'Tales of the Black Widowers', subtitle: '', isbn_10: '0385083033', isbn_13: '9780385083034',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Isaac Asimov's Book of facts", subtitle: '', isbn_10: '0448157764', isbn_13: '9780448157764',
             description: '', released_on: '1993-01-01', publisher: grosset_dunlap, author: asimov)
Book.create!(title: 'Opus 300', subtitle: '', isbn_10: '0395361087', isbn_13: '9780395361085', description: '',
             released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Prélude à Fondation', subtitle: '', isbn_10: '2266034715', isbn_13: '9782266034715',
             description: '', released_on: '1993-01-01', publisher: pocket, author: asimov)
Book.create!(title: 'A short history of chemistry', subtitle: '', isbn_10: '0435550608', isbn_13: '9780435550608',
             description: '', released_on: '1993-01-01', publisher: heinemann, author: asimov)
Book.create!(title: 'How did we find out about computers?', subtitle: '', isbn_10: '0802765335',
             isbn_13: '9780802765338', description: 'Traces the history of the computer, from the ancient abacus through the mechanical calculating machine to modern electronic technology.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about the atmosphere?', subtitle: '', isbn_10: '0802765807',
             isbn_13: '9780802765802', description: 'Traces the history of the scientific discovery of atmosphere and its properties.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about the atmosphere?', subtitle: '', isbn_10: '0802765882',
             isbn_13: '9780802765888', description: 'Traces the history of the scientific discovery of atmosphere and its properties.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'I, robot', subtitle: '', isbn_10: '0586025324', isbn_13: '9780586025321',
             description: "In this collection, one of the great classics of science fiction, Asimov set out the principles of robot behavior that we know as the Three Laws of Robotics. Here are stories of robots gone mad, mind-reading robots, robots with a sense of humor, robot politicians, and robots who secretly run the world, all told with Asimov's trademark dramatic blend of science fact and science fiction.", released_on: '1993-01-01', publisher: harpercollins, author: asimov)
Book.create!(title: 'Isaac Asimov presents The great science fiction stories: volume 9, 1947', subtitle: '',
             isbn_10: '0879978023', isbn_13: '9780879978020', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Isaac Asimov presents The great science fiction stories, volume 10, 1948', subtitle: '',
             isbn_10: '0879978546', isbn_13: '9780879978549', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: "Isaac Asimov's magical worlds of fantasy", subtitle: '', isbn_10: '051747669X',
             isbn_13: '9780517476697', description: '', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'The Edge of Tomorrow', subtitle: '', isbn_10: '0812521323', isbn_13: '9780812521320',
             description: '', released_on: '1993-01-01', publisher: tom_doherty_assoc_llc, author: asimov)
Book.create!(title: 'How did we find out about comets?', subtitle: '', isbn_10: '0802762042', isbn_13: '9780802762047',
             description: "The phenomena of comets and astronomers' concepts about them are considered historically and in view of present knowledge.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about comets?', subtitle: '', isbn_10: '0802762034', isbn_13: '9780802762030',
             description: "The phenomena of comets and astronomers' concepts about them are considered historically and in view of present knowledge.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about outer space?', subtitle: '', isbn_10: '0802762832',
             isbn_13: '9780802762832', description: "Traces the history of mankind's venture into outer space from the first attempts at flight to the sending of human beings to the moon.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Roman Empire', subtitle: '', isbn_10: '0395065771', isbn_13: '9780395065778', description: '',
             released_on: '1993-01-01', publisher: houghton_mifflin_juv, author: asimov)
Book.create!(title: "Asimov's Chronology of the World", subtitle: '', isbn_10: '0062701886', isbn_13: '9780062701886',
             description: "From the world's greatest science writer, a history of the world from the Big Bang to 1945, told in irresistible short takes and highlighted by a timeline.", released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: 'I Robot', subtitle: '', isbn_10: '0449205290', isbn_13: '9780449205297',
             description: "In this collection, one of the great classics of science fiction, Asimov set out the principles of robot behavior that we know as the Three Laws of Robotics. Here are stories of robots gone mad, mind-reading robots, robots with a sense of humor, robot politicians, and robots who secretly run the world, all told with Asimov's trademark dramatic blend of science fact and science fiction.", released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'BICENTENNIAL MAN', subtitle: '', isbn_10: '0449241106', isbn_13: '9780449241103',
             description: "This classic collection includes the title story, acclaimed as Asimov's single finest Robot tale, and now made into a Hollywood movie starring Robin Williams. Each of the eleven stories here sparkle with characteristic Asimov inventiveness and imagination.", released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0553803719', isbn_13: '9780553803716', description: '',
             released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'Yours, Isaac Asimov ', subtitle: '', isbn_10: '0385476248', isbn_13: '9780385476249',
             description: "Isaac Asimov was one of the most prolific authors of our time. When he died in 1992 at the age of seventy-two, he had published more than 470 books in nearly every category of fiction and nonfiction. Asimov was a prodigious correspondent as well as a prolific author. During his professional career he received more than one hundred thousand letters, over ninety thousand of which he answered.For Asimov's younger brother, veteran newspaperman Stanley Asimov, the creation of Yours, Isaac Asimov was truly a labor of love. Completed before Stanley's death in August 1995, the book is made up of excerpts from one thousand never-before-published letters, each handpicked by Stanley for inclusion in this volume. Arranged by subject and accompanied by Stanley's short, insightful introductions, here are letters to statesmen and scientists, actors and authors, as well as to children, housewives, aspiring writers, and fans the world over. The letters are warm, engaging, reasoned, and occasionally impassioned. Through them all Isaac Asimov's legendary genius, wit, and charm shine through.And so we have Yours, Isaac Asimov: A Lifetime of Letters, an intimate glimpse into the thoughts, feelings, and opinions of a great writer and thinker of the modern age. As Stanley Asimov advised, Read the letters carefully. One of them may have been written to you.", released_on: '1993-01-01', publisher: main_street_books, author: asimov)
Book.create!(title: 'I.Asimov : A Memoir', subtitle: '', isbn_10: '055356997X', isbn_13: '9780553569971',
             description: 'The long-awaited autobiography of the science fiction master. Filled with his opinions and insights on topics ranging from his own genius and his fear of flying to politics, love, mortality, Hollywood, and religion. Non-fiction.', released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: "It's been a good life", subtitle: '', isbn_10: '1573929689', isbn_13: '9781573929684',
             description: '', released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'Conversations with Isaac Asimov', subtitle: '', isbn_10: '1578067383', isbn_13: '9781578067381',
             description: '', released_on: '1993-01-01', publisher: university_press_of_mississipp, author: asimov)
Book.create!(title: 'Robots e imperio', subtitle: '', isbn_10: '8401496624', isbn_13: '9788401496622', description: '',
             released_on: '1993-01-01', publisher: plaza_janes_editores_s_a, author: asimov)
Book.create!(title: 'The chemicals of life', subtitle: '', isbn_10: '0451620372', isbn_13: '9780451620378',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Banquets of the Black Widowers', subtitle: '', isbn_10: '0385195419', isbn_13: '9780385195416',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Isaac Asimov collected short stories', subtitle: '', isbn_10: '0970903359',
             isbn_13: '9780970903358', description: '', released_on: '1993-01-01', publisher: peterson_publishing, author: asimov)
Book.create!(title: 'Visions of the universe', subtitle: '', isbn_10: '0939540010', isbn_13: '9780939540013',
             description: '', released_on: '1993-01-01', publisher: cosmos_store, author: asimov)
Book.create!(title: 'Tales of the Black Widowers', subtitle: '', isbn_10: '0586043268', isbn_13: '9780586043264',
             description: '', released_on: '1993-01-01', publisher: panther, author: asimov)
Book.create!(title: 'Creations', subtitle: '', isbn_10: '0517548615', isbn_13: '9780517548615', description: '',
             released_on: '1993-01-01', publisher: crown, author: asimov)
Book.create!(title: '100 malicious little mysteries', subtitle: '', isbn_10: '0880297697', isbn_13: '9780880297691',
             description: '', released_on: '1993-01-01', publisher: dorset_press, author: asimov)
Book.create!(title: 'View from a Height', subtitle: '', isbn_10: '0380003562', isbn_13: '9780380003563',
             description: '', released_on: '1993-01-01', publisher: avon_books_a03, author: asimov)
Book.create!(title: 'Universe from Flat Earth to Quasar', subtitle: '', isbn_10: '038001596X',
             isbn_13: '9780380015962', description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'The Sun Shines Bright', subtitle: '', isbn_10: '0380613905', isbn_13: '9780380613908',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: "Isaac Asimov's marvels of science fiction", subtitle: '', isbn_10: '0803737734',
             isbn_13: '9780803737730', description: '', released_on: '1993-01-01', publisher: davis_publications, author: asimov)
Book.create!(title: 'Marvels of Science Fiction', subtitle: '', isbn_10: '0884115860', isbn_13: '9780884115861',
             description: '', released_on: '1993-01-01', publisher: amereon_ltd, author: asimov)
Book.create!(title: 'Fantastic voyage', subtitle: '', isbn_10: '0553275720', isbn_13: '9780553275728', description: '',
             released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'The Asimov Chronicles: Fifty Years of Isaac Asimov!', subtitle: '', isbn_10: '0441000126',
             isbn_13: '9780441000128', description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'The robots of Dawn', subtitle: '', isbn_10: '0246123044', isbn_13: '9780246123046',
             description: '', released_on: '1993-01-01', publisher: granada, author: asimov)
Book.create!(title: 'The Do-it-yourself bestseller', subtitle: '', isbn_10: '0385179197', isbn_13: '9780385179195',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: "Les robots et l'empire", subtitle: '', isbn_10: '2290311162', isbn_13: '9782290311165',
             description: '', released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: "Les robots de l'aube", subtitle: '', isbn_10: '2290332755', isbn_13: '9782290332757',
             description: '', released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: "Foundation's Friends", subtitle: '', isbn_10: '0812509803', isbn_13: '9780812509809',
             description: '', released_on: '1993-01-01', publisher: tom_doherty_assoc_llc, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0380440652', isbn_13: '9780380440658',
             description: "Hugo Award Winning Science Fiction! Although this is book 3 of the series, the first two are prequels and this is the beginning of the story. In this, the beginning of the epic, he (Asimov) tells of life in the Galactic Empire, and of Hari Seldon's battle to prevent tens of thousands of years of anarchy through the creation of the Foundation.", released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Mythical Beasties', subtitle: '', isbn_10: '0451142675', isbn_13: '9780451142672',
             description: '', released_on: '1993-01-01', publisher: new_amer_library_mm, author: asimov)
Book.create!(title: "Faeries: Issac Asimov's Magical Worlds of Fantasy", subtitle: '', isbn_10: '0451450612',
             isbn_13: '9780451450616', description: '', released_on: '1993-01-01', publisher: new_amer_library_mm, author: asimov)
Book.create!(title: 'Ghosts', subtitle: '', isbn_10: '0451157230', isbn_13: '9780451157232', description: '',
             released_on: '1993-01-01', publisher: new_amer_library_mm, author: asimov)
Book.create!(title: 'Curses', subtitle: '', isbn_10: '0451163052', isbn_13: '9780451163059', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Spells', subtitle: '', isbn_10: '0451135784', isbn_13: '9780451135780', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Magical wishes', subtitle: '', isbn_10: '0451145755', isbn_13: '9780451145758', description: '',
             released_on: '1993-01-01', publisher: new_american_library_of_ca_a01, author: asimov)
Book.create!(title: 'Cosmic knights', subtitle: '', isbn_10: '0451133420', isbn_13: '9780451133427', description: '',
             released_on: '1993-01-01', publisher: new_american_library_of_ca_a01, author: asimov)
Book.create!(title: 'Mirage', subtitle: '', isbn_10: '0743475232', isbn_13: '9780743475235', description: '',
             released_on: '1993-01-01', publisher: ibooks, author: asimov)
Book.create!(title: "Isaac Asimov's Book of Science and Nature Quotations", subtitle: '', isbn_10: '1555844448',
             isbn_13: '9781555844448', description: '', released_on: '1993-01-01', publisher: grove_pr, author: asimov)
Book.create!(title: 'An Isaac Asimov double', subtitle: '', isbn_10: '0450013138', isbn_13: '9780450013133',
             description: '', released_on: '1993-01-01', publisher: new_english_library, author: asimov)
Book.create!(title: 'The far ends of time and earth', subtitle: '', isbn_10: '0385132697', isbn_13: '9780385132695',
             description: '', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Forward the Foundation', subtitle: '', isbn_10: '0385404565', isbn_13: '9780385404563',
             description: '', released_on: '1993-01-01', publisher: transworld_publishers_ltd, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0586010807', isbn_13: '9780586010808', description: '',
             released_on: '1993-01-01', publisher: collins, author: asimov)
Book.create!(title: 'Nine tomorrows', subtitle: '', isbn_10: '0449240843', isbn_13: '9780449240847', description: '',
             released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'The human brain', subtitle: '', isbn_10: '0451623630', isbn_13: '9780451623638', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'The Stars, Like Dust', subtitle: '', isbn_10: '0553293435', isbn_13: '9780553293432',
             description: '', released_on: '1993-01-01', publisher: spectra, author: asimov)
Book.create!(title: 'Norby: Robot For Hire', subtitle: '', isbn_10: '044158635X', isbn_13: '9780441586356',
             description: '', released_on: '1993-01-01', publisher: ace, author: asimov)
Book.create!(title: 'Norby Through Time and Space', subtitle: '', isbn_10: '0441586376', isbn_13: '9780441586370',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: "Isaac Asimov's aliens & outworlders", subtitle: '', isbn_10: '0385279124',
             isbn_13: '9780385279123', description: '', released_on: '1993-01-01', publisher: dial_press, author: asimov)
Book.create!(title: 'The Relativity of Wrong', subtitle: '', isbn_10: '1575660083', isbn_13: '9781575660080',
             description: '', released_on: '1993-01-01', publisher: zebra_books, author: asimov)
Book.create!(title: 'Edge of Tommorrow', subtitle: '', isbn_10: '0812531337', isbn_13: '9780812531336',
             description: '', released_on: '1993-01-01', publisher: tor_books, author: asimov)
Book.create!(title: "Norby and Yobo's Great Adventure", subtitle: '', isbn_10: '0441586384', isbn_13: '9780441586387',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'The Asimov chronicles', subtitle: '', isbn_10: '0712646906', isbn_13: '9780712646901',
             description: '', released_on: '1993-01-01', publisher: century, author: asimov)
Book.create!(title: 'Frontiers', subtitle: '', isbn_10: '0452266343', isbn_13: '9780452266346', description: '',
             released_on: '1993-01-01', publisher: plume_a01, author: asimov)
Book.create!(title: 'Human Brain', subtitle: '', isbn_10: '045161867X', isbn_13: '9780451618672', description: '',
             released_on: '1993-01-01', publisher: new_amer_library_trade, author: asimov)
Book.create!(title: 'Constantinopla', subtitle: '', isbn_10: '8420635332', isbn_13: '9788420635330', description: '',
             released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'The end of eternity', subtitle: '', isbn_10: '0586024409', isbn_13: '9780586024409',
             description: '', released_on: '1993-01-01', publisher: voyager, author: asimov)
Book.create!(title: 'Formacion de Inglaterra, La', subtitle: '', isbn_10: '8420619078', isbn_13: '9788420619071',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'La Alta Edad Media', subtitle: '', isbn_10: '8420618942', isbn_13: '9788420618944',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'How did we find out about nuclear power?', subtitle: '', isbn_10: '0802762654',
             isbn_13: '9780802762658', description: "Traces the work of many scientists over more than one hundred years in developing man's knowledge of nuclear power.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about nuclear power?', subtitle: '', isbn_10: '0802762662',
             isbn_13: '9780802762665', description: "Traces the work of many scientists over more than one hundred years in developing man's knowledge of nuclear power.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about atoms?', subtitle: '', isbn_10: '0802762484', isbn_13: '9780802762481',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'To the ends of the universe', subtitle: '', isbn_10: '0802762352', isbn_13: '9780802762351',
             description: 'Discusses our solar system and other parts of the observable universe such as white dwarf stars and galaxies.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'To the ends of the universe', subtitle: '', isbn_10: '0802762360', isbn_13: '9780802762368',
             description: 'Discusses our solar system and other parts of the observable universe such as white dwarf stars and galaxies.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about energy?', subtitle: '', isbn_10: '0802762050', isbn_13: '9780802762054',
             description: 'Discusses the types, conservation, possible sources, and uses of energy. Includes material about contributors to the study of energy.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about energy?', subtitle: '', isbn_10: '0802762069', isbn_13: '9780802762061',
             description: 'Discusses the types, conservation, possible sources, and uses of energy. Includes material about contributors to the study of energy.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The heavenly host', subtitle: '', isbn_10: '0802762263', isbn_13: '9780802762269',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Isaac Asimov's robot city", subtitle: '', isbn_10: '0708882803', isbn_13: '9780708882801',
             description: '', released_on: '1993-01-01', publisher: futura, author: asimov)
Book.create!(title: '13 Horrors of Halloween', subtitle: '', isbn_10: '0380848147', isbn_13: '9780380848140',
             description: '', released_on: '1993-01-01', publisher: avon_books_mm, author: asimov)
Book.create!(title: 'Robot dreams', subtitle: '', isbn_10: '042509345X', isbn_13: '9780425093450', description: '',
             released_on: '1993-01-01', publisher: berkley_books, author: asimov)
Book.create!(title: 'The Secret of the Universe', subtitle: '', isbn_10: '1558176586', isbn_13: '9781558176584',
             description: '', released_on: '1993-01-01', publisher: pinnacle_books, author: asimov)
Book.create!(title: '100 great fantasy short short stories', subtitle: '', isbn_10: '0380699176',
             isbn_13: '9780380699179', description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0345308999', isbn_13: '9780345308993', description: '',
             released_on: '1993-01-01', publisher: ballantine, author: asimov)
Book.create!(title: 'Foundation and Earth', subtitle: '', isbn_10: '0586071105', isbn_13: '9780586071106',
             description: '', released_on: '1993-01-01', publisher: harpercollins, author: asimov)
Book.create!(title: "The Space Spotter's Guide", subtitle: '', isbn_10: '1555323561', isbn_13: '9781555323561',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Pebble in the Sky', subtitle: '', isbn_10: '0385419538', isbn_13: '9780385419536',
             description: 'Decorative navy blue Hardcover with gold imprinted words. No Jacket Issued. The Isaac Asimov Collection Edition. Trade. 8vo- over 7 3/4 - 9 3/4  tall.', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0385419503', isbn_13: '9780385419505',
             description: "Navy Faux leather cover with surrealistic pictorial pastedown frontpiece. Gilt lettering on spine. Part of The Issac Asimov Collection published by Bantam in conjuction with Doubleday . uncertain what printing year , but probably 1990's.", released_on: '1993-01-01', publisher: gnome_press, author: asimov)
Book.create!(title: 'Alle Robotergeschichten. ( Science Fiction).', subtitle: '', isbn_10: '3404240820',
             isbn_13: '9783404240821', description: '', released_on: '1993-01-01', publisher: lubbe, author: asimov)
Book.create!(title: 'I, Robot', subtitle: '', isbn_10: '078577338X', isbn_13: '9780785773382',
             description: "In this collection, one of the great classics of science fiction, Asimov set out the principles of robot behavior that we know as the Three Laws of Robotics. Here are stories of robots gone mad, mind-reading robots, robots with a sense of humor, robot politicians, and robots who secretly run the world, all told with Asimov's trademark dramatic blend of science fact and science fiction.", released_on: '1993-01-01', publisher: rebound_by_sagebrush, author: asimov)
Book.create!(title: 'I, robot', subtitle: '', isbn_10: '0194242366', isbn_13: '9780194242363', description: '',
             released_on: '1993-01-01', publisher: oxford_university_press, author: asimov)
Book.create!(title: 'The Ugly Little Boy and The Widget, The Wadget, and Boff', subtitle: '', isbn_10: '0812559665',
             isbn_13: '9780812559668', description: '', released_on: '1993-01-01', publisher: tor_books, author: asimov)
Book.create!(title: 'The collapsing universe', subtitle: '', isbn_10: '0671817388', isbn_13: '9780671817381',
             description: '', released_on: '1993-01-01', publisher: apocket_books, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction 07', subtitle: '', isbn_10: '0879977469',
             isbn_13: '9780879977467', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Science fair handbook', subtitle: '', isbn_10: '0673599647', isbn_13: '9780673599643',
             description: 'Provides advice on running a science fair and on doing a project.', released_on: '1993-01-01', publisher: good_year_books, author: asimov)
Book.create!(title: 'Los Limites De La Fundacion', subtitle: '', isbn_10: '8401496543', isbn_13: '9788401496547',
             description: '', released_on: '1993-01-01', publisher: plaza_janes_editores_s_a, author: asimov)
Book.create!(title: 'Compre Jupiter', subtitle: '', isbn_10: '8401496551', isbn_13: '9788401496554', description: '',
             released_on: '1993-01-01', publisher: plaza_janes_editores_s_a, author: asimov)
Book.create!(title: 'Viaje Alucinante', subtitle: '', isbn_10: '840149656X', isbn_13: '9788401496561', description: '',
             released_on: '1993-01-01', publisher: plaza_janes_editores_s_a, author: asimov)
Book.create!(title: 'I, Robot', subtitle: '', isbn_10: '0246121009', isbn_13: '9780246121004', description: '',
             released_on: '1993-01-01', publisher: harper_collins_publishers_stoc, author: asimov)
Book.create!(title: 'Why Are the Rain Forests Vanishing?', subtitle: '', isbn_10: '0836807979',
             isbn_13: '9780836807974', description: '', released_on: '1993-01-01', publisher: gareth_stevens_publishing, author: asimov)
Book.create!(title: 'The Norby Chronicles', subtitle: '', isbn_10: '0441586341', isbn_13: '9780441586349',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Nine Tomorrows', subtitle: '', isbn_10: '0345320727', isbn_13: '9780345320728', description: '',
             released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: "The Earth's Moon", subtitle: '', isbn_10: '1555323820', isbn_13: '9781555323820', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Earth: Our Home Base', subtitle: '', isbn_10: '1555323871', isbn_13: '9781555323875',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens_publishing, author: asimov)
Book.create!(title: 'Mercury, the quick planet', subtitle: '', isbn_10: '155532360X', isbn_13: '9781555323608',
             description: '', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'The Sun', subtitle: '', isbn_10: '1555323758', isbn_13: '9781555323752', description: '',
             released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Our solar system', subtitle: '', isbn_10: '1555323863', isbn_13: '9781555323868', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Did comets kill the dinosaurs?', subtitle: '', isbn_10: '1555323472', isbn_13: '9781555323479',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Quasars, pulsars, and black holes', subtitle: '', isbn_10: '1555323766', isbn_13: '9781555323769',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'The asteroids', subtitle: '', isbn_10: '1555323782', isbn_13: '9781555323783', description: '',
             released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'The Asteroids', subtitle: '', isbn_10: '1555323537', isbn_13: '9781555323530', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'How was the universe born?', subtitle: '', isbn_10: '1555323839', isbn_13: '9781555323837',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: "Space spotter's guide", subtitle: '', isbn_10: '1555323812', isbn_13: '9781555323813',
             description: '', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Rockets, probes, and satellites', subtitle: '', isbn_10: '155532391X', isbn_13: '9781555323912',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Ancient astronomy', subtitle: '', isbn_10: '1555323936', isbn_13: '9781555323936',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Is There Life on Other Planets?', subtitle: '', isbn_10: '1555323596', isbn_13: '9781555323592',
             description: '', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Science Fiction, Science Fact', subtitle: '', isbn_10: '1555323235', isbn_13: '9781555323233',
             description: '', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Space garbage', subtitle: '', isbn_10: '1555323707', isbn_13: '9781555323707', description: '',
             released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Unidentified Flying Objects', subtitle: '', isbn_10: '1555323553', isbn_13: '9781555323554',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Uranus, the sideways planet', subtitle: '', isbn_10: '1555323499', isbn_13: '9781555323493',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Uranus: The Sideways Planet', subtitle: '', isbn_10: '1555323243', isbn_13: '9781555323240',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Saturn: The Ringed Beauty', subtitle: '', isbn_10: '1555323898', isbn_13: '9781555323899',
             description: '', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Jupiter, the spotted giant', subtitle: '', isbn_10: '1555323634', isbn_13: '9781555323639',
             description: '', released_on: '1993-01-01', publisher: g_stevens, author: asimov)
Book.create!(title: 'Mars: Our mysterious neighbor', subtitle: '', isbn_10: '1555323545', isbn_13: '9781555323547',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Our Milky Way and Other Galaxies', subtitle: '', isbn_10: '1555323529', isbn_13: '9781555323523',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Our Milky Way and other galaxies', subtitle: '', isbn_10: '1555323774', isbn_13: '9781555323776',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'The birth and death of stars', subtitle: '', isbn_10: '1555323677', isbn_13: '9781555323677',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'The edge of tomorrow', subtitle: '', isbn_10: '0312932006', isbn_13: '9780312932008',
             description: '', released_on: '1993-01-01', publisher: t_doherty_associates, author: asimov)
Book.create!(title: 'Norby the mixed-up robot', subtitle: '', isbn_10: '0802764959', isbn_13: '9780802764959',
             description: 'Jeff Wells, a Space Academy student, and Norby, a second- hand robot with unusual abilities, find themselves involved in the sinister plans of Ing the Ingrate, who intends to take over the universe.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Fantastic creatures', subtitle: '', isbn_10: '0531043428', isbn_13: '9780531043424',
             description: '', released_on: '1993-01-01', publisher: watts, author: asimov)
Book.create!(title: "Foundation's Edge", subtitle: '', isbn_10: '0246120126', isbn_13: '9780246120120',
             description: '', released_on: '1993-01-01', publisher: harper_collins_publishers_stoc, author: asimov)
Book.create!(title: 'Science Fiction', subtitle: '', isbn_10: '1578661064', isbn_13: '9781578661060',
             description: 'These fantastic tales are as fresh and relevant today as they were when they first appeared in the 1940s, the Golden Age of Science Fiction. Theodore Sturgeon�s �Killdozer!� details the liberation of a mutant energy force with intelligence and a will to destroy. �With Folded Hands,� by Jack Williamson, unfolds a terrifying vision of the future where humanoid mechanisms secure �happiness� for all human beings. In a corrupt empire to come, �The Weapons Shop� of A.E. van Vogt�s world may be the only source for legal and moral justice. Plus, there�s an early �Foundation� tale by Issac Asimov, and many other brilliant examples by C.L. Moore, Lester del Rey, and more.', released_on: '1993-01-01', publisher: galahad, author: asimov)
Book.create!(title: "Asimov's Choice", subtitle: '', isbn_10: '0895590077', isbn_13: '9780895590077',
             description: 'Science Fiction Short Stories.', released_on: '1993-01-01', publisher: davis_publications, author: asimov)
Book.create!(title: 'Flying Saucers', subtitle: '', isbn_10: '0449214001', isbn_13: '9780449214008', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: "Asimov's choice, dark stars & dragons", subtitle: '', isbn_10: '0895590662',
             isbn_13: '9780895590664', description: '', released_on: '1993-01-01', publisher: dale_books, author: asimov)
Book.create!(title: 'Isaac Asimov Science Fiction 4', subtitle: '', isbn_10: '0451141296', isbn_13: '9780451141293',
             description: '', released_on: '1993-01-01', publisher: roc, author: asimov)
Book.create!(title: 'Buy Jupiter, and other stories', subtitle: '', isbn_10: '0449230627', isbn_13: '9780449230626',
             description: '', released_on: '1993-01-01', publisher: fawcett_publications, author: asimov)
Book.create!(title: 'Supermen', subtitle: '', isbn_10: '0451132017', isbn_13: '9780451132017', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction', subtitle: '', isbn_10: '0886774284',
             isbn_13: '9780886774288', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great science fiction stories', subtitle: '', isbn_10: '0879974540',
             isbn_13: '9780879974541', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction', subtitle: '', isbn_10: '0886774055',
             isbn_13: '9780886774059', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Microcosmic Tales with J. D. Olander', subtitle: '', isbn_10: '0886775329',
             isbn_13: '9780886775322', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Seven Cardnl Virtu SF', subtitle: '', isbn_10: '0449244407', isbn_13: '9780449244401',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'The Science fictional olympics', subtitle: '', isbn_10: '0451129768', isbn_13: '9780451129765',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'END OF ETERNITY', subtitle: '', isbn_10: '0449237044', isbn_13: '9780449237045', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Foundation and Empire', subtitle: '', isbn_10: '0380007746', isbn_13: '9780380007745',
             description: 'Although small and seemingly helpless, the Foundation had managed to survive against the greed of its neighboring warlords. But could it stand against the mighty power of the Empire, who had created a mutant man with the strength of a dozen battlefleets...?From the Paperback edition.', released_on: '1993-01-01', publisher: avon_books_mm, author: asimov)
Book.create!(title: 'Puzzles of the Black Widowers', subtitle: '', isbn_10: '0553402013', isbn_13: '9780553402018',
             description: '', released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: 'The Return of the Black Widowers', subtitle: '', isbn_10: '0786716517', isbn_13: '9780786716517',
             description: "Until his death in 1992, author Isaac Asimov would write more than 120 ingenious tales of detection and deduction, and in 66 of them he would present his armchair detectives, the Black Widowers, with the mind-teasing puzzles that they would strive to solve in often-quarrelsome conversation. The Black Widowers club is meeting again. In a private dining room at New York's luxurious Milano restaurant, the six brilliant men once more gather for fine fare served impeccably by their peerless waiter, Henry. At table, too, will of course be that requisite dinner guest to challenge their combined deductive wit: a man whose marriage hinges on finding a lost umbrella; a woman shadowed by an adversary who knows her darkest secrets; a debunker of psychics unable to explain his unnerving experience in a haunted house; or a symphony cellist accused of attacking his wife with a kitchen knife. In addition to six stories that have never before appeared in any collection, this volume includes the ten best-ever Black Widowers cases, among them the very first to be published, in Ellery Queen Mystery Magazine, as well as the first brand new Black Widowers story to appear in more than ten years.", released_on: '1993-01-01', publisher: carroll_graf, author: asimov)
Book.create!(title: 'Mas Cuentos de Los Viudos Negras', subtitle: '', isbn_10: '8420604690', isbn_13: '9788420604695',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'Warum Krieg?', subtitle: '', isbn_10: '325770044X', isbn_13: '9783257700442', description: '',
             released_on: '1993-01-01', publisher: diogenes, author: asimov)
Book.create!(title: 'Cuentos de Los Viudos Negros', subtitle: '', isbn_10: '8420604666', isbn_13: '9788420604664',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'More Tales of the Black Widowers', subtitle: '', isbn_10: '0449210529', isbn_13: '9780449210529',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Robot Dreams Tr', subtitle: '', isbn_10: '0441731538', isbn_13: '9780441731534',
             description: "Robot Dreams collects 21 of Isaac Asimov's short stories spanning the body of his fiction from the 1940s to the 1980s----exploring not only the future of technology, but the future of humanity's maturity and growth.", released_on: '1993-01-01', publisher: ace_trade, author: asimov)
Book.create!(title: 'Wenn der Wind sich dreht. Die neuesten Geschichten.', subtitle: '', isbn_10: '3404230663',
             isbn_13: '9783404230662', description: '', released_on: '1993-01-01', publisher: lubbe, author: asimov)
Book.create!(title: 'Best of Asimov. Die besten SF- Geschichten des ber�hmten Autors.', subtitle: '',
             isbn_10: '3404241134', isbn_13: '9783404241132', description: '', released_on: '1993-01-01', publisher: lubbe, author: asimov)
Book.create!(title: 'The Gods Themselves', subtitle: '', isbn_10: '0345318315', isbn_13: '9780345318312',
             description: 'Winner of the Hugo Award and Nebula Award.', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Los Robots Del Amanecer', subtitle: '', isbn_10: '8401496616', isbn_13: '9788401496615',
             description: '', released_on: '1993-01-01', publisher: astran, author: asimov)
Book.create!(title: 'Cuentos Completos Vol. 2', subtitle: '', isbn_10: '844063787X', isbn_13: '9788440637871',
             description: '', released_on: '1993-01-01', publisher: ediciones_b, author: asimov)
Book.create!(title: 'Cuentos Completos Vol. 1', subtitle: '', isbn_10: '8440631537', isbn_13: '9788440631534',
             description: '', released_on: '1993-01-01', publisher: ediciones_b, author: asimov)
Book.create!(title: 'Les robots', subtitle: '', isbn_10: '2290312908', isbn_13: '9782290312902', description: '',
             released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: "Norby & Yobo's Great Adventure", subtitle: '', isbn_10: '0517134195', isbn_13: '9780517134191',
             description: '', released_on: '1993-01-01', publisher: random_house_value_publishing, author: asimov)
Book.create!(title: 'The War of the Worlds', subtitle: '', isbn_10: '0451522761', isbn_13: '9780451522764',
             description: "This is the granddaddy of all alien invasion stories, first published by H.G. Wells in 1898. The novel begins ominously, as the lone voice of a narrator tells readers that No one would have believed in the last years of the nineteenth century that this world was being watched keenly and closely by intelligences greater than man's... Things then progress from a series of seemingly mundane reports about odd atmospheric disturbances taking place on Mars to the arrival of Martians just outside of London. At first the Martians seem laughable, hardly able to move in Earth's comparatively heavy gravity even enough to raise themselves out of the pit created when their spaceship landed. But soon the Martians reveal their true nature as death machines 100-feet tall rise up from the pit and begin laying waste to the surrounding land. Wells quickly moves the story from the countryside to the evacuation of London itself and the loss of all hope as England's military suffers defeat after defeat. With horror his narrator describes how the Martians suck the blood from living humans for sustenance, and how it's clear that man is not being conquered so much a corralled. --Craig E. Engler", released_on: '1993-01-01', publisher: signet_classics, author: asimov)
Book.create!(title: 'Norby Chronicles', subtitle: '', isbn_10: '0441586333', isbn_13: '9780441586332', description: '',
             released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Asimov on Numbers', subtitle: '', isbn_10: '0671411861', isbn_13: '9780671411862',
             description: '', released_on: '1993-01-01', publisher: pocket, author: asimov)
Book.create!(title: 'Out of the Everywhere', subtitle: '', isbn_10: '1558176012', isbn_13: '9781558176010',
             description: '', released_on: '1993-01-01', publisher: p_mass_paper, author: asimov)
Book.create!(title: 'Buy Jupiter', subtitle: '', isbn_10: '1857989414', isbn_13: '9781857989410',
             description: "From backyard miracles to cosmic conundrums, enter the incredible world of Isaac Asimov. Spanning twenty-three years of Asimov's amazing career, these stories display to the full the exhilarating power of one of science fiction's most astonishing writers. Each tale is accompanied by Asimov's own intriguing account of how and why it came to be written.", released_on: '1993-01-01', publisher: gollancz, author: asimov)
Book.create!(title: 'Treasury of Humor', subtitle: '', isbn_10: '0395284120', isbn_13: '9780395284124',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin_p, author: asimov)
Book.create!(title: "Asimov's Guide to The Bible", subtitle: '', isbn_10: '0517209772', isbn_13: '9780517209776',
             description: '', released_on: '1993-01-01', publisher: random_house, author: asimov)
Book.create!(title: 'Tales of Science Fiction', subtitle: '', isbn_10: '1878481363', isbn_13: '9781878481368',
             description: "This nostalgic collection is from the original 1950s radio show X Minus One which aired during the heyday of science fiction broadcasts. The stories included are ?Surface Tension? by James Blish; ?The Discovery of Morneal Matheway? by William Tenn; ?A Pail of Air? by Fritz Leiber; ?Chain of Command? by Steven Auer; ?Hostess? by Isaac Asimov; ?The Haunted Corpse? by Frederic Pohl; ?Early Model? by Robert Sheckley; ?Volpas? by Wyman Gwynn; ?Knock? by Frederick Brown; and ?Pictures Don't Lie? by Catherine McLaine.", released_on: '1993-01-01', publisher: greatapes, author: asimov)
Book.create!(title: 'Asimov Chronicles', subtitle: '', isbn_10: '0441031080', isbn_13: '9780441031085',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'The Caves of steel', subtitle: '', isbn_10: '0586008357', isbn_13: '9780586008355',
             description: '', released_on: '1993-01-01', publisher: granada, author: asimov)
Book.create!(title: 'The last man on earth', subtitle: '', isbn_10: '0449245314', isbn_13: '9780449245316',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Norby and the Oldest Dragon', subtitle: '', isbn_10: '0441586325', isbn_13: '9780441586325',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: "Norby and the queen's necklace", subtitle: '', isbn_10: '0802766595', isbn_13: '9780802766595',
             description: 'Fourteen-year-old Jeff Wells and his robot friend Norby are suddenly transported back to 1785 in France, where they become involved with a priceless necklace, royal politics, and the accidental creation of alternate futures for Earth.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Norby and the Court Jester', subtitle: '', isbn_10: '0441003419', isbn_13: '9780441003419',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Pebble in the Sky', subtitle: '', isbn_10: '0345335635', isbn_13: '9780345335630',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'PEBBLE IN THE SKY', subtitle: '', isbn_10: '0553293427', isbn_13: '9780553293425',
             description: '', released_on: '1993-01-01', publisher: spectra, author: asimov)
Book.create!(title: 'The Best of Isaac Asimov Presents Super Quiz', subtitle: '', isbn_10: '1569800642',
             isbn_13: '9781569800645', description: "Do your know the occupation of Charlie Brown's father? What about Eleanor Roosevelt's maiden name, or how many people saw Casey strike out? Since 1982, trivia fans have enjoyed Isaac Asimov Presents Super Quiz, as it has appeared in books, as a game, and in the syndicated column and in newspapers nationwide and in Canada. Now, for the first time, the best 15 years of questions and answers have been compiled in one new volume. Ken Fisher is the author of five books and has created four successful games including the popular card game Wizard. His Super Quiz column has been syndicated across North America for years.", released_on: '1993-01-01', publisher: barricade_books, author: asimov)
Book.create!(title: '100 great science fiction short short stories', subtitle: '', isbn_10: '0380507730',
             isbn_13: '9780380507733', description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: '50 Short Science Fiction Tales', subtitle: '', isbn_10: '0684842963', isbn_13: '9780684842967',
             description: '', released_on: '1993-01-01', publisher: touchstone, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Super Quiz', subtitle: '', isbn_10: '0934878129', isbn_13: '9780934878128',
             description: '', released_on: '1993-01-01', publisher: barricade_books, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction', subtitle: '', isbn_10: '0886775183',
             isbn_13: '9780886775186', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great sf stories', subtitle: '', isbn_10: '0879979534',
             isbn_13: '9780879979539', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Los Lagartos Terribles', subtitle: '', isbn_10: '8420646040', isbn_13: '9788420646046',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'Asimov Fantasies: Won', subtitle: '', isbn_10: '0451126246', isbn_13: '9780451126245',
             description: '', released_on: '1993-01-01', publisher: roc, author: asimov)
Book.create!(title: 'Galaxy Magazine, October 1965 All-star 15th Anniversary Issue', subtitle: '',
             isbn_10: '0185065104', isbn_13: '9780185065100', description: '15th anniversary issue, with a magnificent collection of famed authors!', released_on: '1993-01-01', publisher: galaxy_publishing_corp, author: asimov)
Book.create!(title: 'Azazel', subtitle: '', isbn_10: '0553283391', isbn_13: '9780553283396', description: '',
             released_on: '1993-01-01', publisher: spectra, author: asimov)
Book.create!(title: 'Foundation Trilogy', subtitle: '', isbn_10: '0345340884', isbn_13: '9780345340887',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: "Robots et extra-terrestres d'Isaac Asimov.", subtitle: '', isbn_10: '2277230944',
             isbn_13: '9782277230946', description: '', released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: 'The Gods Themselves', subtitle: '', isbn_10: '0613186982', isbn_13: '9780613186988',
             description: 'Winner of the Hugo Award and Nebula Award.', released_on: '1993-01-01', publisher: rebound_by_sagebrush, author: asimov)
Book.create!(title: 'The Science Fictional Solar System', subtitle: '', isbn_10: '0586052283',
             isbn_13: '9780586052280', description: '', released_on: '1993-01-01', publisher: academy_chicago_publishers, author: asimov)
Book.create!(title: 'Opus 100', subtitle: '', isbn_10: '0440166950', isbn_13: '9780440166955', description: '',
             released_on: '1993-01-01', publisher: dell_pub_co_a01, author: asimov)
Book.create!(title: "Isaac Asimov's Space of Her Own", subtitle: '', isbn_10: '0441778712', isbn_13: '9780441778713',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'The Caves of Steel', subtitle: '', isbn_10: '0345313895', isbn_13: '9780345313898',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'The End of Eternity', subtitle: '', isbn_10: '0345318323', isbn_13: '9780345318329',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Frontiers 2', subtitle: '', isbn_10: '0452272297', isbn_13: '9780452272293', description: '',
             released_on: '1993-01-01', publisher: plume_a01, author: asimov)
Book.create!(title: 'The Human Brain', subtitle: '', isbn_10: '0451628675', isbn_13: '9780451628671', description: '',
             released_on: '1993-01-01', publisher: signet, author: asimov)
Book.create!(title: 'Opus Two Hundred', subtitle: '', isbn_10: '0440166667', isbn_13: '9780440166665', description: '',
             released_on: '1993-01-01', publisher: dell_pub_co_a01, author: asimov)
Book.create!(title: 'In Memory Yet Green', subtitle: '', isbn_10: '0380754320', isbn_13: '9780380754328',
             description: '', released_on: '1993-01-01', publisher: avon_books_p, author: asimov)
Book.create!(title: 'Prelude to Foundation', subtitle: '', isbn_10: '0246130482', isbn_13: '9780246130488',
             description: '', released_on: '1993-01-01', publisher: grafton_books, author: asimov)
Book.create!(title: 'Lucky Starr and the Rings of Saturn', subtitle: '', isbn_10: '0449234622',
             isbn_13: '9780449234624', description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'The Asimov Chronicles: Fifty Years of Isaac Asimovi', subtitle: '', isbn_10: '0441031110',
             isbn_13: '9780441031115', description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: "Asimov's Ghosts", subtitle: '', isbn_10: '0583309887', isbn_13: '9780583309882', description: '',
             released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: 'Fantastic Voyage', subtitle: '', isbn_10: '080852075X', isbn_13: '9780808520757', description: '',
             released_on: '1993-01-01', publisher: rebound_by_sagebrush, author: asimov)
Book.create!(title: 'Nightfall', subtitle: '', isbn_10: '0385263414', isbn_13: '9780385263412', description: '',
             released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Nemesis', subtitle: '', isbn_10: '0785796576', isbn_13: '9780785796572', description: '',
             released_on: '1993-01-01', publisher: rebound_by_sagebrush, author: asimov)
Book.create!(title: 'Los Lagartos Terribles y Otros...', subtitle: '', isbn_10: '8420616745', isbn_13: '9788420616742',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'Isaac Asimov Presents the Best Science Fiction of the 19th Century', subtitle: '',
             isbn_10: '1561290866', isbn_13: '9781561290864', description: '', released_on: '1993-01-01', publisher: knightsbridge_pub_co_mass, author: asimov)
Book.create!(title: 'Second foundations', subtitle: '', isbn_10: '0345318005', isbn_13: '9780345318008',
             description: '', released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Sherlock Holmes through time and space', subtitle: '', isbn_10: '0312944012',
             isbn_13: '9780312944018', description: '', released_on: '1993-01-01', publisher: bluejay_books, author: asimov)
Book.create!(title: 'Solar System and Back', subtitle: '', isbn_10: '0380014440', isbn_13: '9780380014446',
             description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Nebula Award Stories: 8', subtitle: '', isbn_10: '9997376552', isbn_13: '9789997376558',
             description: '', released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'Eight Stories From Rest of the Robots', subtitle: '', isbn_10: '0425061191',
             isbn_13: '9780425061190', description: '', released_on: '1993-01-01', publisher: berkley, author: asimov)
Book.create!(title: 'From Earth to Heaven', subtitle: '', isbn_10: '0380421844', isbn_13: '9780380421848',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Is Anyone There? Speculative Essays on the Known and Unknown', subtitle: '',
             isbn_10: '0441374174', isbn_13: '9780441374175', description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Lucky Starr and the Pirate', subtitle: '', isbn_10: '045107047X', isbn_13: '9780451070470',
             description: '', released_on: '1993-01-01', publisher: signet, author: asimov)
Book.create!(title: 'David Starr: Space Ranger', subtitle: '', isbn_10: '0449234932', isbn_13: '9780449234938',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Earth is room enough', subtitle: '', isbn_10: '0449241254', isbn_13: '9780449241257',
             description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'Child of Time', subtitle: '', isbn_10: '0330325795', isbn_13: '9780330325790', description: '',
             released_on: '1993-01-01', publisher: pan_macmillan, author: asimov)
Book.create!(title: "Asimov's mysteries", subtitle: '', isbn_10: '0449240118', isbn_13: '9780449240113',
             description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'Moi, Asimov', subtitle: '', isbn_10: '2207251071', isbn_13: '9782207251072', description: '',
             released_on: '1993-01-01', publisher: denoel, author: asimov)
Book.create!(title: "L'amour, vous connaissez?", subtitle: '', isbn_10: '2207249190', isbn_13: '9782207249192',
             description: '', released_on: '1993-01-01', publisher: denoel, author: asimov)
Book.create!(title: 'La mere des mondes', subtitle: '', isbn_10: '2207301990', isbn_13: '9782207301999',
             description: '', released_on: '1993-01-01', publisher: denoel, author: asimov)
Book.create!(title: 'Chrono-minets', subtitle: '', isbn_10: '2070421678', isbn_13: '9782070421671', description: '',
             released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'Asimov on Science', subtitle: '', isbn_10: '1558175601', isbn_13: '9781558175600',
             description: '', released_on: '1993-01-01', publisher: p_mass_paper, author: asimov)
Book.create!(title: 'Science, Numbers, and I', subtitle: '', isbn_10: '0441754570', isbn_13: '9780441754571',
             description: '', released_on: '1993-01-01', publisher: ace_books, author: asimov)
Book.create!(title: 'Yo, Robot / I, Robot', subtitle: '', isbn_10: '8435020843', isbn_13: '9788435020848',
             description: '', released_on: '1993-01-01', publisher: edhasa, author: asimov)
Book.create!(title: 'X stands for unknown', subtitle: '', isbn_10: '0380698471', isbn_13: '9780380698479',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Best of Isaac Asimov', subtitle: '', isbn_10: '044920829X', isbn_13: '9780449208298',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: "Asimov's Guide to the Bible", subtitle: '', isbn_10: '0380010313', isbn_13: '9780380010318',
             description: '', released_on: '1993-01-01', publisher: avon_books_p, author: asimov)
Book.create!(title: 'Robots Del Amanecer', subtitle: '', isbn_10: '848450042X', isbn_13: '9788484500421',
             description: '', released_on: '1993-01-01', publisher: debolsillo, author: asimov)
Book.create!(title: 'Nine Tomorrows', subtitle: '', isbn_10: '1249016320', isbn_13: '9781249016328',
             description: 'Short Stories - Science Fiction', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'Earth is Room Enough', subtitle: '', isbn_10: '0449233839', isbn_13: '9780449233832',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Pebble in the Sky', subtitle: '', isbn_10: '0449234231', isbn_13: '9780449234235',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'On Writing Science Fiction', subtitle: '', isbn_10: '1880448785', isbn_13: '9781880448786',
             description: 'Here you will find the collective experience of three writers and editors distilled into a complete guide to writing science fiction. Separate chapters cover Idea, Plot, Character, Background, Science, Tragedy, and Comedy. Twelve stories, each a first sale by its author, illustrate the main points of the book. A foreword by Isaac Asimov gives an overall look at the task of becoming an SF writer, and an appendix by the editors explains exactly how to prepare a manuscript for publication.', released_on: '1993-01-01', publisher: wildside_press, author: asimov)
Book.create!(title: 'Foundation and Empire', subtitle: '', isbn_10: '0385423039', isbn_13: '9780385423038',
             description: 'The Isaac Asimov Collection Edition. Decorative imitation leather blue Hardcover with gold imprinted spine. Originally available from Doubleday by subscription only.', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Second Foundation', subtitle: '', isbn_10: '0385423020', isbn_13: '9780385423021',
             description: 'The Isaac Asimov Collection Edition. Decorative imitation leather blue Hardcover with gold imprinted spine. Originally available from Doubleday by subscription only.', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'I, Robot', subtitle: '', isbn_10: '0385423047', isbn_13: '9780385423045',
             description: 'The Isaac Asimov Collection Edition. Decorative imitation leather blue Hardcover with gold imprinted spine. Originally available from Doubleday by subscription only.', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Los Propios Dioses', subtitle: '', isbn_10: '8498001536', isbn_13: '9788498001532',
             description: '', released_on: '1993-01-01', publisher: la_factoria_de_ideas, author: asimov)
Book.create!(title: 'Fronteras y Otros Ensayos', subtitle: '', isbn_10: '8440642393', isbn_13: '9788440642394',
             description: '', released_on: '1993-01-01', publisher: ediciones_b, author: asimov)
Book.create!(title: 'Pebble in the Sky', subtitle: '', isbn_10: '0246129190', isbn_13: '9780246129192',
             description: '', released_on: '1993-01-01', publisher: grafton, author: asimov)
Book.create!(title: 'Gods Themselves', subtitle: '', isbn_10: '0385419511', isbn_13: '9780385419512',
             description: 'Winner of the Hugo Award and Nebula Award.', released_on: '1993-01-01', publisher: bantam_doubleday_dell, author: asimov)
Book.create!(title: 'Cambio!: 71 Visiones Del Futuro', subtitle: '', isbn_10: '8420699780', isbn_13: '9788420699783',
             description: '', released_on: '1993-01-01', publisher: alianza_editorial_sa, author: asimov)
Book.create!(title: '100 Malicious Little Mysteries', subtitle: '', isbn_10: '1566199220', isbn_13: '9781566199223',
             description: '', released_on: '1993-01-01', publisher: barnes_and_noble_books, author: asimov)
Book.create!(title: 'Earth is room enough', subtitle: '', isbn_10: '0586010424', isbn_13: '9780586010426',
             description: '', released_on: '1993-01-01', publisher: panther_books, author: asimov)
Book.create!(title: 'Astronomy today', subtitle: '', isbn_10: '0836839803', isbn_13: '9780836839807', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Global space programs', subtitle: '', isbn_10: '083683982X', isbn_13: '9780836839821',
             description: "An examination of the contributions that Earth's nations have made toward the exploration of the universe.", released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'The Caves of Steel', subtitle: '', isbn_10: '052121629X', isbn_13: '9780521216296',
             description: '', released_on: '1993-01-01', publisher: cambridge_university_press, author: asimov)
Book.create!(title: 'The Science fiction weight-loss book', subtitle: '', isbn_10: '0517549786',
             isbn_13: '9780517549780', description: '', released_on: '1993-01-01', publisher: crown, author: asimov)
Book.create!(title: "Foundation's Edge", subtitle: '', isbn_10: '0606012303', isbn_13: '9780606012300',
             description: 'Now, 498 years after its founding, the Foundation seemed to be following the Seldon Plan perfectly. Too perfectly. Now an impossible planet -- with impossible powers -- threatens to upset the Seldon Plan for good unless two men, sworn enemies, can work together to save it!', released_on: '1993-01-01', publisher: demco_media, author: asimov)
Book.create!(title: 'Caves of Steel', subtitle: '', isbn_10: '0345329007', isbn_13: '9780345329004', description: '',
             released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'The mysterious island', subtitle: '', isbn_10: '0451529413', isbn_13: '9780451529411',
             description: '', released_on: '1993-01-01', publisher: signet_classics, author: asimov)
Book.create!(title: 'Foundation and earth', subtitle: '', isbn_10: '0246130474', isbn_13: '9780246130471',
             description: '', released_on: '1993-01-01', publisher: grafton_books, author: asimov)
Book.create!(title: 'Il Libro Di Fisica', subtitle: '', isbn_10: '8804414456', isbn_13: '9788804414452',
             description: "Isaac Asimov's Library of Physics translated into Italian.", released_on: '1993-01-01', publisher: oscar_mondadori, author: asimov)
Book.create!(title: "Les cavernes d'acier", subtitle: '', isbn_10: '2290319023', isbn_13: '9782290319024',
             description: '', released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: 'Legends, folklore, and outer space', subtitle: '', isbn_10: '083683951X',
             isbn_13: '9780836839517', description: 'Presents both ancient and modern beliefs about the universe.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Astronomy in ancient times', subtitle: '', isbn_10: '0836839781', isbn_13: '9780836839784',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Past, present, and future', subtitle: '', isbn_10: '0879753935', isbn_13: '9780879753931',
             description: '', released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: "Asimov's Choice", subtitle: '', isbn_10: '0895590050', isbn_13: '9780895590053',
             description: 'Science Fiction Anthology', released_on: '1993-01-01', publisher: davis_publications_inc, author: asimov)
Book.create!(title: 'Fantastic Voyage', subtitle: '', isbn_10: '0553126555', isbn_13: '9780553126556', description: '',
             released_on: '1993-01-01', publisher: bantam, author: asimov)
Book.create!(title: 'The Best Science Fiction of Isaac Asimov', subtitle: '', isbn_10: '0246131802',
             isbn_13: '9780246131805', description: '', released_on: '1993-01-01', publisher: grafton, author: asimov)
Book.create!(title: 'Great Space Mysteries', subtitle: '', isbn_10: '1561444286', isbn_13: '9781561444281',
             description: '', released_on: '1993-01-01', publisher: modern_publishing, author: asimov)
Book.create!(title: 'Gold: The Final Science Fiction Collection', subtitle: '', isbn_10: '0060556528',
             isbn_13: '9780060556525', description: "Gold is the final and crowning achievement of the fifty-year career of science fiction's transcendent genius, the world-famous author who defined the field of science fiction for its practitioners, its millions of readers, and the world at large. The first section contains stories that range from the humorous to the profound, at the heart of which is the title story, Gold, a moving and revealing drama about a writer who gambles everything on a chance at immortality: a gamble Asimov himself made -- and won. The second section contains the grand master's ruminations on the SF genre itself. And the final section is comprised of Asimov's thoughts on the craft and writing of science fiction.", released_on: '1993-01-01', publisher: eos, author: asimov)
Book.create!(title: 'Currents of Space', subtitle: '', isbn_10: '0345335449', isbn_13: '9780345335449',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Eight Stories from the Rest of the Robots', subtitle: '', isbn_10: '0515032964',
             isbn_13: '9780515032963', description: "Asimov's stories of The Laws of Robotics, (e.g., I. A robot may not injure a human beingmay not inure or through inaction, allow a human being to come to harm.'). Now popular in I, Robot and other movies, The Laws of Robotics were explained in short stories previously published in science fiction magazines, and other books.", released_on: '1993-01-01', publisher: pyramid_books, author: asimov)
Book.create!(title: 'Le cycle de Fondation. 5, Terre et fondation', subtitle: '', isbn_10: '2070417522',
             isbn_13: '9782070417520', description: '', released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'Cuentos completos I', subtitle: '', isbn_10: '8466621814', isbn_13: '9788466621816',
             description: "The mind-bending contents of this collection are what each of the millions of loyal readers who follow Asimov's writing have always wanted: all of the short stories that the author wrote over the course of his prolific career. This first volume of the collection contains 46 short stories, several of which have become cornerstones of science-fiction writing since their original publication. El contenido alucinante de esta colecci�n es lo que siempre han querido los miles de seguidores de la obra de Asimov: todos los cuentos cortos que el autor lleg� a escribir en su carrera. Este primer tomo de la colecci�n contiene 46 t�tulos, algunos de los cuales ya se han convertido en cl�sicos del g�nero de la ciencia ficci�n.", released_on: '1993-01-01', publisher: ediciones_b, author: asimov)
Book.create!(title: 'El Universo', subtitle: '', isbn_10: '8420614580', isbn_13: '9788420614588', description: '',
             released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'Astronomy projects', subtitle: '', isbn_10: '083683979X', isbn_13: '9780836839791',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Exploring outer space', subtitle: '', isbn_10: '0836839811', isbn_13: '9780836839814',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Space junk', subtitle: '', isbn_10: '0836839838', isbn_13: '9780836839838', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Heyne Science Fiction - Jahresband 1980', subtitle: '', isbn_10: '3453306333',
             isbn_13: '9783453306332', description: '', released_on: '1993-01-01', publisher: heyne_bucher, author: asimov)
Book.create!(title: 'The complete robot', subtitle: '', isbn_10: '0246119233', isbn_13: '9780246119230',
             description: '', released_on: '1993-01-01', publisher: granada, author: asimov)
Book.create!(title: 'Fantasy art techniques', subtitle: '', isbn_10: '1850280053', isbn_13: '9781850280057',
             description: '', released_on: '1993-01-01', publisher: paper_tiger, author: asimov)
Book.create!(title: 'Nine Tomorrows', subtitle: '', isbn_10: '0345346041', isbn_13: '9780345346049', description: '',
             released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'War With the Robots', subtitle: '', isbn_10: '0517065045', isbn_13: '9780517065044',
             description: '', released_on: '1993-01-01', publisher: random_house_value_publishing, author: asimov)
Book.create!(title: 'Laughing space', subtitle: '', isbn_10: '0860511812', isbn_13: '9780860511816', description: '',
             released_on: '1993-01-01', publisher: robson, author: asimov)
Book.create!(title: 'The Egyptians', subtitle: '', isbn_10: '0395065720', isbn_13: '9780395065723',
             description: "Egypt's enduring civilization described in fourteen stages which progress from ancient beginnings to contemporary time.", released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'Words on the map', subtitle: '', isbn_10: '0395065690', isbn_13: '9780395065693', description: '',
             released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'La Edad De Oro I', subtitle: '', isbn_10: '8401496578', isbn_13: '9788401496578',
             description: '7.1 * 4.4. Septima Edicion En Esta Coleccion.', released_on: '1993-01-01', publisher: plaza_janes_editores_s_a_a02, author: asimov)
Book.create!(title: 'Futuredays', subtitle: '', isbn_10: '0805001204', isbn_13: '9780805001204', description: '',
             released_on: '1993-01-01', publisher: h_holt, author: asimov)
Book.create!(title: 'Purr-Fect Crime', subtitle: '', isbn_10: '1567310842', isbn_13: '9781567310849', description: '',
             released_on: '1993-01-01', publisher: mjf_books, author: asimov)
Book.create!(title: 'Those amazing electronic thinking machines!', subtitle: '', isbn_10: '0531046672',
             isbn_13: '9780531046678', description: 'Nine science fiction stories by the likes of Isaac Asimov and Arthur C. Clarke, featuring robots and computers.', released_on: '1993-01-01', publisher: f_watts, author: asimov)
Book.create!(title: 'The complete stories', subtitle: '', isbn_10: '0006480160', isbn_13: '9780006480167',
             description: '', released_on: '1993-01-01', publisher: harpercollins_voyager, author: asimov)
Book.create!(title: 'The complete stories', subtitle: '', isbn_10: '0006476473', isbn_13: '9780006476474',
             description: '', released_on: '1993-01-01', publisher: harpercollins_voyager, author: asimov)
Book.create!(title: "Baker's dozen", subtitle: '', isbn_10: '051744500X', isbn_13: '9780517445006', description: '',
             released_on: '1993-01-01', publisher: greenwich_house, author: asimov)
Book.create!(title: 'The best of Isaac Asimov', subtitle: '', isbn_10: '0722112572', isbn_13: '9780722112571',
             description: '', released_on: '1993-01-01', publisher: sphere_books, author: asimov)
Book.create!(title: 'The disappearing man and other mysteries', subtitle: '', isbn_10: '0802766021',
             isbn_13: '9780802766021', description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The disappearing man and other mysteries', subtitle: '', isbn_10: '0802765785',
             isbn_13: '9780802765789', description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Norby's other secret", subtitle: '', isbn_10: '0802765254', isbn_13: '9780802765253',
             description: "When unscrupulous scientists try to kidnap Norby in order to learn the secret of the robot's anti-gravitational capabilities, he and Jeff discover on the dragon-inhabited planet Jamya the key to an even more precious secret.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "Norby's other secret", subtitle: '', isbn_10: '0802765564', isbn_13: '9780802765567',
             description: "When unscrupulous scientists try to kidnap Norby in order to learn the secret of the robot's anti-gravitational capabilities, he and Jeff discover on the dragon-inhabited planet Jamya the key to an even more precious secret.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Les Vents du changement', subtitle: '', isbn_10: '2070419789', isbn_13: '9782070419784',
             description: '', released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'The Stars, Like Dust', subtitle: '', isbn_10: '0345339290', isbn_13: '9780345339294',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'The End of Eternity', subtitle: '', isbn_10: '0345336550', isbn_13: '9780345336552',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'The best science fiction of Isaac Asimov', subtitle: '', isbn_10: '0451151968',
             isbn_13: '9780451151964', description: '', released_on: '1993-01-01', publisher: roc, author: asimov)
Book.create!(title: 'Dragon tales', subtitle: '', isbn_10: '0449245233', isbn_13: '9780449245231', description: '',
             released_on: '1993-01-01', publisher: ballantine_books, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0380009145', isbn_13: '9780380009145', description: '',
             released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Alpha Centauri, the nearest star', subtitle: '', isbn_10: '068851779X', isbn_13: '9780688517793',
             description: 'Discusses the constellations and stars, their distance, luminosity, and size, steller astronomy, starlight, and life on other planetary systems, with special reference to the third brightest and also the nearest star, Alpha Centauri.', released_on: '1993-01-01', publisher: lothrop_lee_shepard_co, author: asimov)
Book.create!(title: 'Alpha Centauri, the nearest star', subtitle: '', isbn_10: '0688417795', isbn_13: '9780688417796',
             description: 'Discusses the constellations and stars, their distance, luminosity, and size, steller astronomy, starlight, and life on other planetary systems, with special reference to the third brightest and also the nearest star, Alpha Centauri.', released_on: '1993-01-01', publisher: lothrop_lee_shepard_co, author: asimov)
Book.create!(title: 'Our Planetary System', subtitle: '', isbn_10: '0836811348', isbn_13: '9780836811346',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens_publishing, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0893402109', isbn_13: '9780893402105',
             description: '', released_on: '1993-01-01', publisher: j_curley, author: asimov)
Book.create!(title: 'Second foundation', subtitle: '', isbn_10: '0893402117', isbn_13: '9780893402112',
             description: '', released_on: '1993-01-01', publisher: j_curley, author: asimov)
Book.create!(title: "Foundation's Friends", subtitle: '', isbn_10: '0812567706', isbn_13: '9780812567700',
             description: '', released_on: '1993-01-01', publisher: tor_books, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0553803727', isbn_13: '9780553803723',
             description: '', released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'A Whiff of Death.', subtitle: '', isbn_10: '0802752020', isbn_13: '9780802752024',
             description: '', released_on: '1993-01-01', publisher: walker_co, author: asimov)
Book.create!(title: 'Stars Like Dust', subtitle: '', isbn_10: '0449235955', isbn_13: '9780449235959', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great science fiction stories, volume II, 1949', subtitle: '',
             isbn_10: '0879979186', isbn_13: '9780879979188', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction 04', subtitle: '', isbn_10: '0879975709',
             isbn_13: '9780879975708', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction 03', subtitle: '', isbn_10: '0879975237',
             isbn_13: '9780879975234', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction', subtitle: '', isbn_10: '0886771064',
             isbn_13: '9780886771065', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Isaac Asimov Presents Great Science Fiction 02', subtitle: '', isbn_10: '0879974834',
             isbn_13: '9780879974831', description: '', released_on: '1993-01-01', publisher: daw, author: asimov)
Book.create!(title: 'Momentos estelares de la ciencia', subtitle: '', isbn_10: '842063980X', isbn_13: '9788420639802',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: "Isaac Asimov's guide to earth and space", subtitle: '', isbn_10: '0679404376',
             isbn_13: '9780679404378', description: '', released_on: '1993-01-01', publisher: random_house, author: asimov)
Book.create!(title: 'In the beginning', subtitle: '', isbn_10: '0893403679', isbn_13: '9780893403676', description: '',
             released_on: '1993-01-01', publisher: j_curley_associates, author: asimov)
Book.create!(title: 'Best of Isaac Asimov', subtitle: '', isbn_10: '0449236536', isbn_13: '9780449236536',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Foundation and empire', subtitle: '', isbn_10: '0380426897', isbn_13: '9780380426898',
             description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'The chemicals of life', subtitle: '', isbn_10: '0451616065', isbn_13: '9780451616067',
             description: '', released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'La Tragedia De La Luna', subtitle: '', isbn_10: '8420617172', isbn_13: '9788420617176',
             description: '', released_on: '1993-01-01', publisher: alianza, author: asimov)
Book.create!(title: 'Robot dreams', subtitle: '', isbn_10: '0575040211', isbn_13: '9780575040212', description: '',
             released_on: '1993-01-01', publisher: gollancz, author: asimov)
Book.create!(title: 'Great Tales of the Golden Age of Science Fiction', subtitle: '', isbn_10: '0883657724',
             isbn_13: '9780883657720', description: '', released_on: '1993-01-01', publisher: bbs_publishing_corporation, author: asimov)
Book.create!(title: 'In Joy Still Felt', subtitle: '', isbn_10: '0380530252', isbn_13: '9780380530250',
             description: '', released_on: '1993-01-01', publisher: avon_books_p, author: asimov)
Book.create!(title: 'The Rest of the Robots', subtitle: '', isbn_10: '0385090412', isbn_13: '9780385090414',
             description: "ROBOT TONY is the first robot designed to perform domestic duties by the U S Robots and Mechanical Men Corporation. Is it Tony's fault that the lady of the house where he's field-tested falls in love with him? ROBOT AL was intended for shipment to a mining outfit on the moon. Instead, he's loose in the mountains of Virginia...building from scraps of junk his very own, very dangerous disintegrator. Goodbye, Virginia? ROBOT LENNY answers workaday questions in babytalk. So why is Dr Susan Calvin, the world's top robopsychologist, fascinated by this messed-up specimen of an industrial Robot? THE REST OF THE ROBOTS is the second timeless, amazing and amusing volume of Isaac Asimov's robot stories, offering golden insights into robot thought processes. Asimov's Three Laws of Robotics were programmed into real computers thirty years ago at the Massachusetts Institute of Technology - with surprising results. Readers of today still have many platinumiridium surprises in store.. THE THREE LAWS OF ROBOTICS: 1. A robot may not injure a human being or, through inaction, allow a human being to come to harm 2. A robot must obey the orders given it by human beings except where such orders would conflict with the First Law 3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law", released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'The Gods Themselves', subtitle: '', isbn_10: '1857989341', isbn_13: '9781857989342',
             description: 'Winner of the Hugo Award and Nebula Award.', released_on: '1993-01-01', publisher: gollancz, author: asimov)
Book.create!(title: "Isaac Asimov's treasury of humour", subtitle: '', isbn_10: '0853031541', isbn_13: '9780853031543',
             description: '', released_on: '1993-01-01', publisher: vallentine_mitchell_a01, author: asimov)
Book.create!(title: 'The Foundation Trilogy', subtitle: '', isbn_10: '0345312058', isbn_13: '9780345312051',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: '100 great science fiction short short stories', subtitle: '', isbn_10: '0860510352',
             isbn_13: '9780860510352', description: '', released_on: '1993-01-01', publisher: robson, author: asimov)
Book.create!(title: 'Un defile de robots - le cycle des robots', subtitle: '', isbn_10: '2290311251',
             isbn_13: '9782290311257', description: '', released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: 'Cailloux dans le ciel', subtitle: '', isbn_10: '2290312975', isbn_13: '9782290312971',
             description: '', released_on: '1993-01-01', publisher: jai_lu, author: asimov)
Book.create!(title: 'Please explain', subtitle: '', isbn_10: '0200722883', isbn_13: '9780200722889', description: '',
             released_on: '1993-01-01', publisher: abelard_schuman, author: asimov)
Book.create!(title: 'Today and tomorrow and', subtitle: '', isbn_10: '0200722069', isbn_13: '9780200722063',
             description: '', released_on: '1993-01-01', publisher: abelard_schuman, author: asimov)
Book.create!(title: 'Die frühe Foundation- Trilogie.', subtitle: '', isbn_10: '3453196570', isbn_13: '9783453196575',
             description: '', released_on: '1993-01-01', publisher: heyne, author: asimov)
Book.create!(title: 'Uranus', subtitle: '', isbn_10: '0836832434', isbn_13: '9780836832433',
             description: 'Introduces the third largest known planet in the solar system.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Pluto and Charon', subtitle: '', isbn_10: '083683240X', isbn_13: '9780836832402',
             description: 'Introduces the smallest known planet in the solar system as well as its moon.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Neptune', subtitle: '', isbn_10: '0836832396', isbn_13: '9780836832396',
             description: 'Introduces the fourth largest known planet in the solar system.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Asteroids', subtitle: '', isbn_10: '0836832337', isbn_13: '9780836832334',
             description: 'Introduces the bodies in space also known as planetoids, minor planets, or when they stray from their paths, meteoroids.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Jupiter', subtitle: '', isbn_10: '0836832353', isbn_13: '9780836832358',
             description: 'A description of Jupiter, the largest planet in our solar system, which includes information on its numerous moons, space probes which have studied it, and the 1994 collision of comet remnants with the planet.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Venus', subtitle: '', isbn_10: '0836832442', isbn_13: '9780836832440',
             description: 'Describes some of the various features of the planet Venus and how we have learned what we know.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Mars', subtitle: '', isbn_10: '0836832361', isbn_13: '9780836832365',
             description: "A description of Mars, the fourth planet from our sun, which includes information on the controversy over possible life on Mars, on the planet's moons, and on space probes and spacecraft which have studied it.", released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Saturn', subtitle: '', isbn_10: '0836832418', isbn_13: '9780836832419',
             description: 'A description of Saturn, the second largest planet in our solar system, which includes information on its numerous moons, and spacecraft and probes which study it.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'The sun', subtitle: '', isbn_10: '0836832426', isbn_13: '9780836832426',
             description: 'A description of the sun, the star of our solar system, which includes information on its origin, physical composition, and characteristics, as well as on studies made of the sun by instruments and satellites.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Mercury', subtitle: '', isbn_10: '083683237X', isbn_13: '9780836832372',
             description: 'Describes the planet closest to the sun, examining its size and composition, its surface features, its orbit, and efforts to learn more about this planet.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Earth', subtitle: '', isbn_10: '0836832345', isbn_13: '9780836832341',
             description: 'A description of Earth, the third planet from the sun, which includes information on its origins, composition, and unique characteristics.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'The moon', subtitle: '', isbn_10: '0836832388', isbn_13: '9780836832389',
             description: 'Examines the many facets and puzzles of our Moon, including its phases and eclipses, its early discoveries and modern exploration, and its possible origins and future prospects.', released_on: '1993-01-01', publisher: gareth_stevens_pub, author: asimov)
Book.create!(title: 'Foundation and Earth', subtitle: '', isbn_10: '0345351428', isbn_13: '9780345351425',
             description: '', released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Our Federal Union', subtitle: '', isbn_10: '0395202833', isbn_13: '9780395202838',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin_juv, author: asimov)
Book.create!(title: 'Sensuous Dirty Old Man', subtitle: '', isbn_10: '0451071999', isbn_13: '9780451071996',
             description: '', released_on: '1993-01-01', publisher: signet, author: asimov)
Book.create!(title: 'I, Robot', subtitle: '', isbn_10: '0739312707', isbn_13: '9780739312704',
             description: "In this collection, one of the great classics of science fiction, Asimov set out the principles of robot behavior that we know as the Three Laws of Robotics. Here are stories of robots gone mad, mind-reading robots, robots with a sense of humor, robot politicians, and robots who secretly run the world, all told with Asimov's trademark dramatic blend of science fact and science fiction.", released_on: '1993-01-01', publisher: random_house_audio, author: asimov)
Book.create!(title: 'The naked sun', subtitle: '', isbn_10: '0586010165', isbn_13: '9780586010167', description: '',
             released_on: '1993-01-01', publisher: harpercollins, author: asimov)
Book.create!(title: 'Fundacion', subtitle: '', isbn_10: '840204719X', isbn_13: '9788402047199',
             description: 'Language: Spanish/Espanol.', released_on: '1993-01-01', publisher: bruguera_libro_amigo, author: asimov)
Book.create!(title: 'Robot visions', subtitle: '', isbn_10: '0451450000', isbn_13: '9780451450005', description: '',
             released_on: '1993-01-01', publisher: new_american_library, author: asimov)
Book.create!(title: 'The left hand of the electron', subtitle: '', isbn_10: '0586041214', isbn_13: '9780586041215',
             description: '', released_on: '1993-01-01', publisher: panther, author: asimov)
Book.create!(title: 'Fantastic voyage', subtitle: '', isbn_10: '0552092371', isbn_13: '9780552092371', description: '',
             released_on: '1993-01-01', publisher: corgi, author: asimov)
Book.create!(title: 'Far Ends of Time & Earth', subtitle: '', isbn_10: '1122349653', isbn_13: '9781122349659',
             description: '', released_on: '1993-01-01', publisher: bantam_doubleday_dell_a01, author: asimov)
Book.create!(title: 'Banquets of the Black Widowers', subtitle: '', isbn_10: '0586065881', isbn_13: '9780586065884',
             description: '', released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: 'Robots & Empire-O M', subtitle: '', isbn_10: '0345337697', isbn_13: '9780345337696',
             description: "Long after his humiliating defeat at the hands of Earthman Elijah Baley, Keldon Amadiro embarked on a plan to destroy planet Earth. But even after his death, Baley's vision continued to guide his robot partner, R. Daneel Olivaw, who had the wisdom of a great man behind him and an indestructable will to win....", released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'Rockets, Probes, and Satellites', subtitle: '', isbn_10: '1555323669', isbn_13: '9781555323660',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'The Sun', subtitle: '', isbn_10: '1591021227', isbn_13: '9781591021223', description: '',
             released_on: '1993-01-01', publisher: prometheus_books, author: asimov)
Book.create!(title: 'The key word, and other mysteries', subtitle: '', isbn_10: '0380432242', isbn_13: '9780380432240',
             description: '', released_on: '1993-01-01', publisher: avon, author: asimov)
Book.create!(title: 'Second foundation', subtitle: '', isbn_10: '0553803735', isbn_13: '9780553803730',
             description: '', released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'Asimov on astronomy', subtitle: '', isbn_10: '0356080196', isbn_13: '9780356080192',
             description: '', released_on: '1993-01-01', publisher: macdonald_and_co, author: asimov)
Book.create!(title: "Foundation's fear", subtitle: '', isbn_10: '0061056383', isbn_13: '9780061056383',
             description: '', released_on: '1993-01-01', publisher: harperprism, author: asimov)
Book.create!(title: 'Asimov on science fiction', subtitle: '', isbn_10: '0380585111', isbn_13: '9780380585113',
             description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Fantastic voyage: by Isaac Asimov', subtitle: '', isbn_10: '0395073529', isbn_13: '9780395073520',
             description: '', released_on: '1993-01-01', publisher: houghton_mifflin, author: asimov)
Book.create!(title: 'How did we find out about coal?', subtitle: '', isbn_10: '0802764010', isbn_13: '9780802764010',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about coal?', subtitle: '', isbn_10: '0802764002', isbn_13: '9780802764003',
             description: '', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about life in the deep sea?', subtitle: '', isbn_10: '0802764274',
             isbn_13: '9780802764270', description: '', released_on: '1993-01-01', publisher: walker_pub_co, author: asimov)
Book.create!(title: 'How did we find out about life in the deep sea?', subtitle: '', isbn_10: '0802764282',
             isbn_13: '9780802764287', description: '', released_on: '1993-01-01', publisher: walker_pub_co, author: asimov)
Book.create!(title: 'How did we find out about the beginning of life?', subtitle: '', isbn_10: '0802764487',
             isbn_13: '9780802764485', description: "Describes scientists' attempts to find out how life began, including such topics as spontaneous generation and evolution.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'How did we find out about the beginning of life?', subtitle: '', isbn_10: '0802764479',
             isbn_13: '9780802764478', description: "Describes scientists' attempts to find out how life began, including such topics as spontaneous generation and evolution.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Norby the mixed-up robot', subtitle: '', isbn_10: '0802764967', isbn_13: '9780802764966',
             description: 'Jeff Wells, a Space Academy student, and Norby, a second- hand robot with unusual abilities, find themselves involved in the sinister plans of Ing the Ingrate, who intends to take over the universe.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Science fiction, science fact', subtitle: '', isbn_10: '0440403529', isbn_13: '9780440403524',
             description: 'Compares what writers over the centuries have written about an imaginary future with the reality revealed by time.', released_on: '1993-01-01', publisher: dell_publishing, author: asimov)
Book.create!(title: 'Rings of Saturn', subtitle: '', isbn_10: '0340491116', isbn_13: '9780340491119', description: '',
             released_on: '1993-01-01', publisher: hodder_stoughton_general_divis, author: asimov)
Book.create!(title: "La Fin de l'eternite", subtitle: '', isbn_10: '207042264X', isbn_13: '9782070422647',
             description: '', released_on: '1993-01-01', publisher: gallimard, author: asimov)
Book.create!(title: 'Norby and the court jester', subtitle: '', isbn_10: '0802781314', isbn_13: '9780802781314',
             description: "While visiting the toy and game fair on planet Izz, Jeff and Norby search for a missing robot and the villain responsible for sabotaging theplanet's computer system.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Norby and the court jester', subtitle: '', isbn_10: '0802781322', isbn_13: '9780802781321',
             description: "While visiting the toy and game fair on planet Izz, Jeff and Norby search for a missing robot and the villain responsible for sabotaging theplanet's computer system.", released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'Nightfall Two', subtitle: '', isbn_10: '0586036571', isbn_13: '9780586036570', description: '',
             released_on: '1993-01-01', publisher: grafton, author: asimov)
Book.create!(title: 'Alternate worlds', subtitle: '', isbn_10: '0891040498', isbn_13: '9780891040491', description: '',
             released_on: '1993-01-01', publisher: prentice_hall_a01, author: asimov)
Book.create!(title: 'Isaac Asimov presents the great science fiction stories, volume 8, 1946', subtitle: '',
             isbn_10: '0879977809', isbn_13: '9780879977801', description: '', released_on: '1993-01-01', publisher: daw_books, author: asimov)
Book.create!(title: 'Asimov laughs again', subtitle: '', isbn_10: '0060168269', isbn_13: '9780060168261',
             description: '', released_on: '1993-01-01', publisher: harpercollins_publishers, author: asimov)
Book.create!(title: "Isaac Asimov's Book of Science and Nature Quotations", subtitle: '', isbn_10: '1555841112',
             isbn_13: '9781555841119', description: '', released_on: '1993-01-01', publisher: grove_pr, author: asimov)
Book.create!(title: 'The early Asimov; or, Eleven years of trying', subtitle: '', isbn_10: '0575016442',
             isbn_13: '9780575016446', description: '', released_on: '1993-01-01', publisher: gollancz, author: asimov)
Book.create!(title: 'Isaac Asimov presents Through darkest America', subtitle: '', isbn_10: '0373303025',
             isbn_13: '9780373303021', description: '', released_on: '1993-01-01', publisher: worldwide, author: asimov)
Book.create!(title: 'The man who pulled down the sky', subtitle: '', isbn_10: '0373303033', isbn_13: '9780373303038',
             description: '', released_on: '1993-01-01', publisher: worldwide, author: asimov)
Book.create!(title: 'The Hugo Winners', subtitle: '', isbn_10: '0449240452', isbn_13: '9780449240458', description: '',
             released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Isaac Asimov presents the golden years of science fiction', subtitle: '', isbn_10: '0517413671',
             isbn_13: '9780517413678', description: '', released_on: '1993-01-01', publisher: bonanza_books, author: asimov)
Book.create!(title: 'Earth, Our Crowded Spaceship', subtitle: '', isbn_10: '0449231720', isbn_13: '9780449231722',
             description: '', released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'Bicentennial Man', subtitle: '', isbn_10: '0449235734', isbn_13: '9780449235737',
             description: "This classic collection includes the title story, acclaimed as Asimov's single finest Robot tale, and now made into a Hollywood movie starring Robin Williams. Each of the eleven stories here sparkle with characteristic Asimov inventiveness and imagination.", released_on: '1993-01-01', publisher: fawcett, author: asimov)
Book.create!(title: 'The Martian Way', subtitle: '', isbn_10: '0586017992', isbn_13: '9780586017999', description: '',
             released_on: '1993-01-01', publisher: grafton_books, author: asimov)
Book.create!(title: 'Foundation and Empire', subtitle: '', isbn_10: '0808520792', isbn_13: '9780808520795',
             description: 'Although small and seemingly helpless, the Foundation had managed to survive against the greed of its neighboring warlords. But could it stand against the mighty power of the Empire, who had created a mutant man with the strength of a dozen battlefleets...?From the Paperback edition.', released_on: '1993-01-01', publisher: tandem_library, author: asimov)
Book.create!(title: 'The story of Ruth', subtitle: '', isbn_10: '038508594X', isbn_13: '9780385085946',
             description: 'Retells the Old Testament tale of the faithful daughter-in-law showing how the events of the story reveal the history of that period.', released_on: '1993-01-01', publisher: doubleday, author: asimov)
Book.create!(title: 'Fantastic voyage', subtitle: '', isbn_10: '0234779578', isbn_13: '9780234779576', description: '',
             released_on: '1993-01-01', publisher: dobson, author: asimov)
Book.create!(title: 'The future in space', subtitle: '', isbn_10: '0836809130', isbn_13: '9780836809138',
             description: 'Projects astronomical and astronautical possibilities for the future, such as huge telescopes, airplanes in space, a probe to the sun, and a landing on Mars.', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: "Isaac Asimov's Guide to Earth and Space", subtitle: '', isbn_10: '1558004521',
             isbn_13: '9781558004528', description: 'A wide-ranging exploration of our universe -- from what makes the wind blow? to how was the moon formed? -- in questions-and-answer format, written in vintage Asimov style. A fine introduction to modern astronomical theory. -- LIBRARY JOURNAL', released_on: '1993-01-01', publisher: audio_literature, author: asimov)
Book.create!(title: "The Earth's Moon", subtitle: '', isbn_10: '155532357X', isbn_13: '9781555323578', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens_publishing, author: asimov)
Book.create!(title: 'Mars, We Love You', subtitle: '', isbn_10: '0515030864', isbn_13: '9780515030860',
             description: '', released_on: '1993-01-01', publisher: penguin_putnam_mass, author: asimov)
Book.create!(title: 'Naked Sun', subtitle: '', isbn_10: '0345313909', isbn_13: '9780345313904', description: '',
             released_on: '1993-01-01', publisher: del_rey, author: asimov)
Book.create!(title: 'The Gods Themselves', subtitle: '', isbn_10: '0449018296', isbn_13: '9780449018293',
             description: '', released_on: '1993-01-01', publisher: fawcett_crest, author: asimov)
Book.create!(title: 'Did Comets Kill the Dinosaurs?', subtitle: '', isbn_10: '1555323227', isbn_13: '9781555323226',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'How Was the Universe Born?', subtitle: '', isbn_10: '1555323588', isbn_13: '9781555323585',
             description: '', released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Mars: Our mysterious neighbor', subtitle: '', isbn_10: '1555323790', isbn_13: '9781555323790',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Quasars, pulsars, and black holes', subtitle: '', isbn_10: '1555323510', isbn_13: '9781555323516',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'Our Solar System', subtitle: '', isbn_10: '1555323618', isbn_13: '9781555323615', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Ancient astronomy', subtitle: '', isbn_10: '1555323685', isbn_13: '9781555323684',
             description: '', released_on: '1993-01-01', publisher: g_stevens_pub, author: asimov)
Book.create!(title: 'The Sun', subtitle: '', isbn_10: '1555323502', isbn_13: '9781555323509', description: '',
             released_on: '1993-01-01', publisher: gareth_stevens, author: asimov)
Book.create!(title: 'Far as human eye could see', subtitle: '', isbn_10: '0246133090', isbn_13: '9780246133090',
             description: '', released_on: '1993-01-01', publisher: grafton, author: asimov)
Book.create!(title: 'How Did We Find Out About Volcanoes?', subtitle: '', isbn_10: '0380596261',
             isbn_13: '9780380596263', description: '', released_on: '1993-01-01', publisher: avon_books, author: asimov)
Book.create!(title: 'Fundacion', subtitle: '', isbn_10: '8484500519', isbn_13: '9788484500513', description: '',
             released_on: '1993-01-01', publisher: debols_llo, author: asimov)
Book.create!(title: 'Fundacion E Impeaio/Foundation and Empire', subtitle: '', isbn_10: '8484506924',
             isbn_13: '9788484506928', description: '', released_on: '1993-01-01', publisher: debolsillo, author: asimov)
Book.create!(title: 'Segunda Fundacion', subtitle: '', isbn_10: '8484500470', isbn_13: '9788484500476',
             description: '', released_on: '1993-01-01', publisher: debols_llo, author: asimov)
Book.create!(title: 'Anochecer y Otros Cuentos', subtitle: '', isbn_10: '8440644175', isbn_13: '9788440644176',
             description: '', released_on: '1993-01-01', publisher: ediciones_b, author: asimov)
Book.create!(title: "ABC's of ecology", subtitle: '', isbn_10: '0802760996', isbn_13: '9780802760999',
             description: 'Defines two ecological terms for each letter of the alphabet, from additive and algae to zoology and zonation.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: "ABC's of ecology", subtitle: '', isbn_10: '0802760988', isbn_13: '9780802760982',
             description: 'Defines two ecological terms for each letter of the alphabet, from additive and algae to zoology and zonation.', released_on: '1993-01-01', publisher: walker, author: asimov)
Book.create!(title: 'The human body', subtitle: '', isbn_10: '0451627075', isbn_13: '9780451627070', description: '',
             released_on: '1993-01-01', publisher: mentor, author: asimov)
Book.create!(title: 'The winds of change and other stories', subtitle: '', isbn_10: '0586057439',
             isbn_13: '9780586057438', description: '', released_on: '1993-01-01', publisher: grafton, author: asimov)
Book.create!(title: '100 Malicious Little Mysteries', subtitle: '', isbn_10: '1402711018', isbn_13: '9781402711015',
             description: 'Charmingly insidious and satisfyingly devious, these 100 baffling little mysteries�selected by such prominent authors as Isaac Asimov�are just the thing to suit your most malevolent mood. These tales come from the pen of many well-known writers in the field, including Michael Gilbert, Edward Wellen, Edward D. Hack, Bill Bronzini, Lawrence Treat, and Francis Nevins, Jr. Whether it�s �The Unfriendly Neighbor,� or a �Class Reunion,� �A Recipe for Revenge,� or �An Exercise in Insurance,� these stories are sure to keep you up all night, puzzling over their possible solutions. Each one has its own particular and irresistible appeal: an unexpected twist, a delectable puzzle, a devastating revelation, or perhaps even a refreshing display of pernicious spit', released_on: '1993-01-01', publisher: sterling, author: asimov)
Book.create!(title: 'The Time travelers', subtitle: '', isbn_10: '0917657349', isbn_13: '9780917657344',
             description: '', released_on: '1993-01-01', publisher: d_i_fine, author: asimov)
Book.create!(title: 'Light', subtitle: '', isbn_10: '0695851659', isbn_13: '9780695851651', description: '',
             released_on: '1993-01-01', publisher: follett_pub_co, author: asimov)
Book.create!(title: 'Ciclo Delle Fondazioni', subtitle: '', isbn_10: '8804408987', isbn_13: '9788804408987',
             description: '', released_on: '1993-01-01', publisher: oscar_italian, author: asimov)
Book.create!(title: 'Foundation', subtitle: '', isbn_10: '0808520784', isbn_13: '9780808520788', description: '',
             released_on: '1993-01-01', publisher: bantam_books, author: asimov)
Book.create!(title: 'Henry Hudson', subtitle: '', isbn_10: '0836805585', isbn_13: '9780836805581',
             description: 'Describes the adventures of the seventeenth-century English explorer, from his search for a short route from Europe to the Orient to his mysterious disappearance after members of his crew mutinied.', released_on: '1993-01-01', publisher: gareth_stevens_childrens_books, author: asimov)
