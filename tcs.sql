-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 03:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`) VALUES
('7d50f45072ea6a586d794f06b6a097f995278429', '2401:4900:1c33:2308:f8fc:4c59:f933:fd68', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1686224667;is_user_in|b:1;admin_id|s:1:\"1\";user_type|s:1:\"0\";company_id|s:1:\"0\";designation|s:5:\"ADMIN\";admin_name|s:5:\"admin\";admin_unit|s:0:\"\";'),
('ffe82ee9561a9926a4a07e5b1b9999e4ebfd9446', '2405:204:222e:8856::41a:80b0', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1686224222;'),
('6a6b0fe3a996212193c1e99aa1f16e3570d7a8f9', '2401:4900:1c33:2308:f8fc:4c59:f933:fd68', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1686224667;is_user_in|b:1;admin_id|s:1:\"1\";user_type|s:1:\"0\";company_id|s:1:\"0\";designation|s:5:\"ADMIN\";admin_name|s:5:\"admin\";admin_unit|s:0:\"\";'),
('5b2eb1f10bab3e5dba3ce8ccc41da72e426f16da', '114.143.23.10', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1686231175;is_user_in|b:1;admin_id|s:1:\"1\";user_type|s:1:\"0\";company_id|s:1:\"0\";designation|s:5:\"ADMIN\";admin_name|s:5:\"admin\";admin_unit|s:0:\"\";'),
('d3ccf2f7306c1b7a711708cf207926ea05e3c887', '49.44.83.197', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1686230853;'),
('s63qmm6pvs3igh6golm6m0as09gvsau2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718131593;id|s:1:\"5\";'),
('nhls495h5atv53p9npgsi757dkiptde8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718132089;id|s:1:\"5\";'),
('1rumbc0407tfpnf1gbqnnkhvo8q762q6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718133335;id|s:1:\"5\";'),
('107jlils3b6se6po6gvfhv2g0tcnvai4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718133750;id|s:1:\"5\";'),
('igfnhjt6cr3b1pcgbli4g2uv45fthr4v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718133750;id|s:1:\"5\";'),
('k25ca2dc4cu31fv5p9ftc4b24eipocq8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718217754;'),
('popb1kqkbqb0mjh32abanmu6mhaeurlg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718404523;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fr441uop7ekk3g179qnjatj7gjobk4n6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718404911;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('pp8oqp7phlo1gv9ua3c08839el94ga1l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718405269;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ibrmcdffi6v2kphagso1jns50ef1foge', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718405572;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rt6tav522arsg8n4j0a25ig1i47173kl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718405926;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8o3ig1so8c0q4jr9g6sc4ssi3t87ices', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718406233;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('33vbs3d40ateou3946phi4esjbvj6iuk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718406543;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('nrdasgd3iabq7b0q6flov69ttguoojtb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718407334;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ghcuvmaj39j8ivqmtvnvdp3g6d7tls17', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718409722;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('oi74pem0n8c2a21tv4rpbrbpqcue8ktc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718410130;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ns201f4umhp5rkn6i85fq6toj8oge3rh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718410476;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hpesrv32ib6qaqotfe8359gvlmmeqp1f', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718410778;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jndc476bfpu4sdopkqos4kgeuvdmngmc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718411172;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('i483dn4qam060kcjjpjjeldhap5pssec', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718411502;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rnq2grac2t3ofptp78vre2k77aks307o', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718412255;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('e2qrul3d79j3cj4pvsrhgochtpu818fe', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718412629;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('pcdde254heracm365j8t6soiospva2ta', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718413761;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2t7n0r02r6blbu4mhpvock8g96hakbrh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718414072;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mnbhna6jjmjpnl2ke6ecrv3k732mci07', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718414888;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('kme11hiqc808cgs5hj8vhn3bbqssjjn0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718415195;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vvfmsph8mdrc94uc6ud3fpj71tk4eml8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718415528;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('buhdkp706r59qhg6f688sc8qmh15ubf9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718415856;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0459oe959rsua5b2o1landf2lgo5i2i9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718416333;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9ff7rt3ikr8r6qasknv2hmvfa04qbe54', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718416679;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('tbeukvu8suema1hh5nu2vtd2rq0pujeu', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718416999;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9car0skofg2bpvjl53jnm81flapeuh77', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718417763;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fsnch1ia35lcbsrlglp680hgotisn82a', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718418086;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0e4j451q2anss68mb2s8d6uiufd2btq7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718418389;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('s4mo06s3t2mtvgtpckescqju3aod8j5n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718418885;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jafr5o6r3cta3grqph5280fudrokjjaj', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718419396;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('g2hd2f3afmbjfal61j0r4vmrdv2s65ne', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718419707;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('lckrortvig529rm9l3q9gfl794kfp64k', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718420222;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2ate5ccp999vdm39rl08jdn5uq92namk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718420627;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('27a9abe6okn50vk2v67saetprec8h1c4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718420964;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('resal9kqcbsnchm86ofmje7k72ppb2ma', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718421276;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('liri6tpip7ircdf7fk47390odach8mp3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718422711;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hfgnlngseq3q3jn293eva5s1evm4es8u', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718423062;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0ug114m7s6ge29hr7vnk43dmieluuk1m', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718423376;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a4d2bms8m3iprk35p38n6km7dnk9f9vl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718423723;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3njv5mkvlulo1mbh9dausp22kvkuv3o2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718424055;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('t2t3sag7for3j3hv93sfk1k82kr3aelj', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718424055;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n6aj0ti3544457v2v6ommhs7701i5np5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718478518;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a9nidn76mpung5v18gh4s7jb8i1jp1fg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718479169;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('96klaapt4a3gcukjqemsi5phjmh7516e', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718479678;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a2e7j65ob45kmhu0kukrkt6h8njne3vs', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718480041;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('oqplbg49tq0ilnkt0mk03enljieu17ct', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718480364;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('g61tv33n1mgduif1jn13ed8jncn7fn5m', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718480924;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('us1tfjoj01s4qiqe4unjkev3hlrjnd0k', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718481259;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a7jtj1b7mjojrh8f8itbp1tg3mhrtro3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718481569;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2fccd9tpaufv7ck2cldmr0b97eq5pofn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718481912;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('eorsu3fps9q16rutga229j4iqi1q3329', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718482213;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('highdmulml1agmfjn09q2fcnju5672am', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718482813;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('gh814dt2s08irsb24jg7jdhgnp0t3tfp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718483229;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ivp2nul90kbrsdshdm9hai7h1b9ralrm', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718483977;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hm3s02hd8cedvqdnq8o2k64br3k5k11m', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718484519;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('l66153a2uufmiji5pouotk3nm88jks6s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718485758;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('gs9qdl039vs0pbdcumuo4e4mtimol3e2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718486167;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vpe11hirthjkn06kqh93uue8gg17p091', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718486519;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('66shi43j92k0gvlujcatp74ims6ejhc4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718486820;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3kjju8hhmf9ngi4v9levv5jainm0m92j', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718487213;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2p49hvr55i9pksta5c1ed9noq0vi5k0i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718487835;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('59ms9o87e1768atn4uuahleug48h03ug', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718488174;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rdj80bjjee338sqr44bctv9q3m9gruhg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718488586;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3ta16pr9b5quum3gqmhie3qt9vqptov3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718489068;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6tnpo8stfb3ujjj6jrqdurrgv0494r3f', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718489407;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('28fbgpdftmhmu9ntahibf9m97bo9moap', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718489860;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('h7vdk15u9o294od5t4inb6irnkl5noeh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718490303;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ifokg3oegd5soqa2is9rnip1la4vmtt0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718490604;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9a1l95fq2spb1kkuc9772rpmsq3ir7it', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718491059;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vgaga5do77ld9e0ouojamm4en8dt1brb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718491395;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0lk1a3ess293rndvsa0ue3oclnj628u9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718491733;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2h07qtjbcr4d4opcpksk39uj6jchoira', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718492098;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3ho0n61f7n1chba6m0u0sebmrntdun0r', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718492513;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('p5lv72eqsqf6ftla85qd1mqgkgic862v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718492896;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rcgpurb4jahvvn6trta4via87ook6pta', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718493440;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ukimp8kv3lienn7t3sfq2e7gags4dlkq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718493775;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('054pvvflhvauv7nb0186coo8iqs39s1a', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718494129;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4vnicutul56pssocnpt4ci91g7q4i95t', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718494461;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fo2gre4db7ok94i64nhhb9f3idmfn695', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718494803;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('gb9plf8phtuej1ee0041e524atle9jh9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718496013;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('aujsllea33qd9dk8i52oc4latjl04kv3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718499027;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qhvj5onmtr6numnv2hms8mpculpopas8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718499482;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('bmtq1tc9avmp7vvukb40jmj7ikv81nlr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718499482;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('p259kl421sk4klpvku2iuu9no1730dgr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718662669;'),
('h1k6k1ur7uuuu16n0a2vueummr7atoco', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718741555;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4mei7c8nnf3ku9mb2i78fp08uc3vpqta', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718741890;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3lb9gu7ha07adct2eaasq6m8k5d5b7tk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718742235;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('oi597fr174f48uelkgpiiv3hjrqsk0of', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718742550;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3bp99pjdhecef46u80ue3674up2lu9qo', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718743725;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vbs7bphsclkt4cb7etc9kr31rknug6he', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718744078;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qhgl0cugdl88r11ddmjtj3pjv7ic2q9o', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718744450;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('s322sb743r6v4cbudr4239aut75so13f', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718744972;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('igauglbqjvolqd35u6o1nf353qnkebg3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718745286;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mepn3r7dp2bk3qhj9oij67v86bskrkt5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718745832;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('l86d4qr6jhhrqkgk82rrirb5e2hv8l3s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718746139;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fcd9ev8pg895p8q6ns1t24dm980umghr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718746517;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('soaeq3c9rgo3ctbvn27crh70trhuct6g', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718746836;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('thamai1rh0cbucqmh86qnfth5ch2rvup', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718747182;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ca3fqqke16seamudagfghd3fagu1j8nt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718747657;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mb7b7m0c8a12cfint7pq5mpgcr4pqp3p', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718748077;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('nsi406klkjumvgtthqn8m23oruf1k9tk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718748431;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('pv3b9vip35p0bd6cpuonpdkncv28mckg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718749924;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('snviolhif6k3mpdo1nrkthu9lvf0k9nr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718750232;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ueja26agls97pfji5g12bjrgcugke8ts', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718750576;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('61rcehvgv056b9phichd03u1ub09r40b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718750886;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('780lsg9v0etlkbqj5qnf3et8q3htpoau', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718751392;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rhini73lrb6bq476dkdb68avr99ddmik', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718751731;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('55qrrga79610gvcnhq4o3s0em64l0rdn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718752633;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fbmc2g9b4n8eln686ashpmtnpcp781oj', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718753069;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('do8q7km69jm3b97lvobj941m2jiatr6k', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718753562;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('osh4n0k5c6tngcve2hg1abva4qtq7fro', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718754009;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ami55j77orfff1hjd2qllh24qc0ff38b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718754314;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fbk0fgss54fs3l7be2q0s617lqm4qmgq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718754901;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('r84d1h50bpiud2u1tn9q8a68jovos19i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718755203;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9bfuml21t7qcmsqm59hujergetuj28l7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718755510;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2ckuiq7qt17ctrt1q43i71ehflhm9cs3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718755819;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('f7reig1gsdb0912ejgle9u6gatsglc29', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718756389;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q0elek6s6l8v8aqo50dlp9f1n54ob7ar', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718757121;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rps9emc9ecsud6m3g0q1jdik3aovj02n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718757431;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('h09l0359j37b39oaqaghtb62tk22ksqf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718757774;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('d1doeh1jmmn5hu0gbv78nl04hq2u360f', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718758154;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('sunn2h81csjrjcsp96hldb0piodokt6g', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718758752;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7okala24avreg7dimfs3kiglt75agre1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718759069;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ku82phleo8ajvea825i5hr11ga2ug424', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718759424;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c39o5tp5n3pfg3p2007upbg3rglat0sd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1718759424;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('adb60kdjfo0aqr68h23kr095cvirpap5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719001488;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rplq8bhbnbr460b32l2l6fg0i0fvq8jn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719001816;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('plarrdeekb8m35hl6ncq0epshhucnu25', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719002157;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q11s7f3kbq215log3elrfe7qnaa79lvr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719002482;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dtnt1m7cqvvg02tbadldavimodqi6f6l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719002806;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('bve45437v2e1vgjfahe4g8e6rfnjcemi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719003141;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('u8heeijqdhbsorpv18kfdmb52f8shs6d', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719003870;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('47e1jsou4rjr02nd3mortco40i1ugbq9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719004592;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('65lolop46o4o641475lqll6jumhjdhvo', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719004964;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('t45radvgrv6qbv6r78u4o2a2pemkpr0u', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719005343;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6vlihasnr83lbhtfo0bfihd9j7dv7hdc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719005658;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('d1msns1u9i6n5247ndh312cs7erk20lo', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719005986;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('l3a3j8m6e0k2s7jc1v6o2pltlupoi98i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719006425;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('e0d7ne9nt6efvpbibv5g0i0c6l37aa81', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719006728;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('d0nc6sh540khlqbnu6uogn8mqidh46jt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719007043;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dm0cevvknkvvjtrflv5vqc5avce4srcd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719007347;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('t7dmji8jub1n227fjehd02qcmq2abd2p', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719007692;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rgjo0bk93ep8eqgv68cmfpnvkv6fa20p', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719008098;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('sgcncspjst1c7guo43q0m4012t45m2bv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719008544;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3cngll72q9v1scjfc3dvkgvrk6be3t9q', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719008952;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('p73ac4hvgaa5rilnoqgqc7o1iun4pvcn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719009279;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ik2cpj78r7joa6k2cudst5msi724vgev', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719009595;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ekmljoii3404qu2mm35asjpf6s0oa38h', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719010544;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3pjjp5hc3ocld3era5tq0f9ea9m7jdvd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719010852;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n8gbpvpcsshijlchn6hjbcubg4btbdiq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719011182;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('uiuj8uk0thv6o8quibjbhu3m49a3tbuu', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719011497;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qituh6e8nf4idv62cn9o83447n6nfmqs', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719011842;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('r01b9sejugnrrjg9i814rton3f2t0g5m', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719012334;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ejaa24r9q01sfauqn5emvqkdoudls24n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719012898;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('k9lhh7mavnvhmulpv5npobhp8ht0pp9u', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719013219;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('f445lrikclo8pihq5v4e6ahrjo0e57vh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719013602;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dqh6478mm09vc8lmfujntl8um4nhn5uc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719013940;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('pjfpnt0dd4tvjo4di355mitfkad61iog', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719015667;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('j4i60gs2k8gnr7b4b9vu2fk5bt3l8nku', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719015975;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('icb9q92mo3pptrpbob3o6mqhhekuhsb7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719016320;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('g55hs6e0f800ah2puql5g3hdtikmcc4i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719016675;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hk4fga5ls96ftrvnlafd7qb71nfvg78r', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719017082;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5jehm1fgrs5diod3r46jd9vr961j5jp4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719017483;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7krs2kge2i2ejror5pmq78b9lkqm2m12', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719017784;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ci2c93t2o3amd5oe10ebdrpaps3tq9j8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719019362;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('02n0noo0l7leglj5o5pv0ca7im2miiqo', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719019808;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1mle7uf4obatqt4n7cvgfvi66pefd26u', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719020119;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('nojsbkulqh3k51mr7jq5qrk91r8o4kku', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719021201;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('elm2t8nqrn9avosall91mjj83rad1of6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719022538;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5lqlpc7oln962jh25jmh2eh30g0hnc64', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719022978;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('io4dt0vtm2vcpqq523ahrcg1a0giqok5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719023303;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4hscp3406a0g30gv5mcal5d9feumkluo', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719023975;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('27cnrc6l1f80i5r57gqln0cn22vc2tet', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719024553;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('74pvijpldulcic3h6m9fj51l003h3hss', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719024875;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0j58a8gqinael5tm7skgsp9rei42hvt7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719025201;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('kt32va4m0ug7luocl6kubpqcstkt1ojl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719025609;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3anmomiem1bb7llhdcoo8f0jgqtol8hl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719025950;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rssm3phn1q9amrh61sicg5ucfhusvp39', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719026537;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('99i11leqhalmv0u8gao83c9dk2v7t9fa', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719027126;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hvja8ttopb7t1ojjjrbv9bq1qhipflgd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719027511;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('15fsf6tvhfojuidkiipa9tniu2q1i3f5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719030538;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('btoe6socpvkijclnt1ecee4ccp8714rs', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719030840;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8asj05gqg7ash62fmrffnmmgmrnfcvsh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719031149;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('i1irgorvjc3klhv1r2sichskg2glultv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719031524;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a7jr8q0722irr8h66vmg2sv2saqjhgt8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719031844;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('u82m63m3card6j9b1uhst8d5fqksqaoh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719032168;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('f3h38tbqcpm98u6qlhna9ujfgm24e92t', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719032571;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cl7j39k1a1t574570s772ln1ertp0bpo', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719032873;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('paqodpv5fd2cmnvkbg3ttdte0p7tdirb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719033191;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8ctdv980h7ud9lfoens1t2si5q6md7ho', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719033566;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0nmktlm7e354853q7vjjjicl28msrgoi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719033878;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('k7jrklunph1mt8qe4r0k2ncnug4as18p', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719034260;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('drp9h893tt8oj8ais8bv5uov29g8qm5u', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719034564;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rsmuan6is6f6mjh1lk9t9127t01995vc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719034975;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('coglm854fvtv4o0s8jmhv095tm6ghn6b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719035306;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jt2an841b3jhuo1d8kk9ahf5j5m35047', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719035625;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hmqjor2dv4grgh9sm0kug5et8uuo8mnh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719035927;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('d10hpto8org3oshhj179refrt9823tj6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719035927;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('32ainofslklme9dn07egq1ge1l3524ca', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719083401;'),
('bdomkrhc6s5caru47jvfr8t94c81nbpi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719083836;'),
('3e6jsh3ok4s6rhejeqt40qntf9ukdsmg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719083836;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q034tpv39c7bubrn5hs42d974983nips', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719085300;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mga57bs114lfbt46f9atsk8ppdepschi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719085779;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7qf8dpa78c5p8vja2dc5iepr8ku2jb1e', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719086106;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qscl7s4ck5v4p0s7nq7j0m0c3k6q3mud', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719086532;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('kg9naop65decf6125grvevd6akfehurd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719087068;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6o7chh0r2hclfe9229ufr0sp9smi9gv2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719087528;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('briabcnib89fmd305n3e3tnel1fa0gbv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719087858;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('920nt8d8rm2ppecmfn7ri071fjuf4qe8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719088162;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cdt7jec5p431uha44886l5fule68fuh8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719088977;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ij5kdbb9u33n2slsc9i10qrlebe74k3s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719089295;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('lfi100rqtsau7mosmcq88sqrjgtvn2de', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719089626;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('r1fkpo35rvaoid34a9uk83h2t9gpsm14', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719089972;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('18ng7n2omttd3ivolcbtvr2i8mg3mib3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719090302;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('auvusfr65n6h05shvhebafig6lrn05hf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719090637;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('sea23og7vg2kmgakddjsd44m0k2sq3fa', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719090953;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rrnli3qtptb92lg1d8745fh5p8vin5pf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719091321;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c396qbp9s0186kle7qm0acojuejdsd43', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719092032;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('lbjercdeoapn2lcvkqh85dukktblj7n5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719092384;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('830gjblv7bu746evul2909riuiuj0vub', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719092685;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qvbhtnjg253i1686b32psdec6lc7631n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719093018;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qd8v8e9kfmu996lrt7950k44tge6s964', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719094117;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('sarei2v2qccjlnckr74f7qk6pjbstll3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719094447;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('skn6liuggoaum9j9i8ab7fc3c4cb523j', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719094906;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ck0dd6jomr5uk6impq3ebsveoqbt2od3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719095231;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qq12fn8g35d2fupc7k2p6o3p6casgkft', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719095863;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4kbsf66tf555kkigog2vpjv5tai7uk0k', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719096200;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8bu4kuf526tb04a5f9c5k3j2s9nh5ck6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719096533;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('kv2391i6aj3al19f6k2fieo4thqj17c6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719097132;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('g16j3peq6j3qciv7a7pute8iqtq1vs94', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719098654;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2kalulmmasp8vn6e0rhgl2h9rjhatb7t', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719099061;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fmb585se28ud1l3j0srtgip3op830qqt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719099402;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1ckifvu5ugntshe5ra09n22i2kpr3im8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719100090;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8eip6e3okun2cqivv2h043l31qm8qk3j', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719101822;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hisigrueq6v0kcjkgo2gg8nmjuao4u0v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719102143;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('05u1k7i7q4leg3495kk3ecc4ipi47722', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719103366;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('du5ihd5inubma7rie16jhjkq84ga4676', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719103687;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5u4nmclvusvji1nfo6sncjokej3ro9sq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719104188;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6afqe2skegnjvpvbvvjvu3onmkocbd2h', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719104564;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1knob1kgcjh1deas17epku8t1aj7cp2r', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719104880;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('aqo2mmj6dl7lehingeduhp3ud15jrlhn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719105192;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('o871ta4rt19livqga2ukgg72n8ktm11h', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719105536;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('bmauvb3tbanc210v389spio0nku1nh5s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719106133;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c5lmljf6raqkfv71hnokjjfek1jvgt4q', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719106472;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('pt76vhpri06s7u7tq2o16pq762q5hd7b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719106794;'),
('b5ust58dnt451m4cbo2teqb4g18c86ir', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719185114;'),
('at9kpfnoptnm2ghnasom7a0tcveijjhq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719185426;'),
('frb9ch9583j93k8m0s7klpgg6lfr17hq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719185732;'),
('8mhp0dki8g8g888b2nhtc21b169nerp2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719186063;'),
('6lls37hu17011srod2il9lrcuak8e8ff', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719186453;'),
('a4p4ln3uthirdreptr0218kopuda7aqa', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719186793;'),
('vco2ktipqptakfip0df9eebq0eehavtq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719187104;'),
('vk4q03pig60med8ud8sfr1c6uats764b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719187447;'),
('c7ol7lg4nasosjpinefsiglb2uj5d9hg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719187751;'),
('ti6c9b3afann68429dqbovpq2dum6g6s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719188104;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9bl5cr30oh32f3dcj8qrpjq0l0eovl8s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719188728;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('as5n86d737aeokmg9vjrstni14sf2kpl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719189210;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9phsjfcs81r3pl90g4totpnqld5sr8ep', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719189533;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7i2ligvdv8ckf7ph63a89ddnefebcjlk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719189888;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q9kl94l9umg7ppofkbqoj6f9v3t855g3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719190437;'),
('i2hk3vj43rl7h0s38nua027ts8fmlmlq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719191038;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('62ne6c8s7096d5j8okkon7s5lk0qsj8p', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719191518;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('uimeckqs33mbgkabhr7jbp8u112ldrmq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719192330;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qdu8plh2p5tutvtis19cub8phsctecjr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719192636;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('l704e9s156d622un325pb647jadotc7d', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719192973;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q7k0nu5pdmf5qc0psud4e5em9o1ild4i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719193532;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rn7hae72hnap5jn8r942nq01jepps1be', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719193833;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c6h8doen8h73mvvqp97qbepeihe6tn9k', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719194249;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('isihecl7ht8suh9q56qcoda4rsgpb939', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719194758;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('f726et94mas14pt1ikvnkp2fcqd6cihg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719195180;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9ujob3hf0he664841j7hd9fs7lg96b4l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719195481;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('id3roo6ihjm6ubnusgg4923hsuotovl8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719195481;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qdkps1on5dc0oboqpe1kfbgksoq9l495', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719257361;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('31la1gknmhsraf4hdukpnrmd6j8pisv1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719257682;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4l2dv8clgb4a6ju3rrkichi5hcul2p2n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719258706;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ucv9mfnasih9rbjio2f4teeqqd8hfk43', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719259031;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('hijr53cknbs2drev6m6vi5eb5bnsjdcc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719259595;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5b4v2ou22oilsktvgk6f68di14o0tjt1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719260075;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('g29i2n20pu8rrj5jtspbefqob3uk6sts', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719261577;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('f7agi9u3j8f6a2rc1rt3v8cm7l1d1dsl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719261937;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mpc79oe3h36k7kemahso0s2h467ounqi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719262238;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('s3d9kv1ca6oh05ldgudl32ol7vv77ujj', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719262543;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c53ta9ms5cigegfbkkl3coe8gf28voaa', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719262898;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2fmovnh25malcfpkbk4ldsgibvbq1gv5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719263221;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('d3n19ruadikotn938tr8tk6lmg613hap', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719263563;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('i1hrfu82tme9vfoa1t1gk20iraf0u3if', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719264072;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('f12us73c2491q9frjit5icp6c6c3gt4i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719265200;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7ir368tnv69e802a0sjemqk58e6r4f4o', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719265520;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c34ogv2n0tm3r77s8isr57d3udr7e8kp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719266088;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0jcrdn6s8g9ftdn3go7588lsih0igbo1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719266400;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('s0g2bph2gml2jb751igv0hu1063g4hhn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719266866;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('of9nagad21plumum2472ffmrkvog0j4u', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719267210;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('m1ulac8lsp5ntr9dtaunaltq224q542c', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719267533;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rdglecv6fche6pe0mnvqcr16nfdbq0r2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719267933;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3vc3a30jdb8tgfi3polgssvqjtm03qv5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719268237;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mucbol5gqjo1vj5ajqloldvi29c4fafa', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719268635;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7pv2rj6iq9ccen54dbvjvhb085vjgj69', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719269034;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('k0ghjlgmbfdvshrjdva2nnmhkkoodc19', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719269949;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('l4bjhmc1592boij055k262rvdaqplf3g', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719270307;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rqqp8p4i9ue5eu91odsoqq4e3clj2d9l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719271701;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cgpp96cbhitaf9sa9rt5553cdh08dem2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719272294;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jmrpce2tpi8pig5u4ubio5tu5trf239i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719273311;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ec6d2nf1cgkm8rsgnvluftq1kd2tj6ga', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719273681;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('p6pdbq7cmlr52sovk9balurotvsrr912', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719273982;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('lodvmob9eki1iulrt4jt0foftgfijcf8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719274283;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('536gst79s6s04mu9d8dsr20d35fuq0u9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719274815;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2vtq9jrvetfj8am2ukmm6aa9rt8m1ghi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719275172;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qvk8q51q2n4sss2rqetc1vhvbh8oej4c', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719275494;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('p2mhjunnlevanl08qk412lmkvmjo3bga', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719275868;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vosq06ivo8pj6kfc6fvncmoibqm6t56v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719276414;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ikn6nn1m2eqehpapaq61pt2l3dg2075t', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719276725;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4ikuj05mjabso6hdp0qfv45si2r4pbri', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719277033;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('llelbcfelq43avo8o8oenvtu6c660qqb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719277380;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ssug1hm37u1rn4219cesbpitar4opt3v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719277683;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('p9rbnks05svvp7b100t08b7s9a28jfle', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719278030;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5v7v1m71vg24puc92t0iu9fs61ha6m7d', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719278331;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ut8f7pt7gt0jp0of1tic1j07mu58iij5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719278641;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1gvms72lenqukna40fh7glvqoiff3e4q', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719278950;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a3qs6v2uqqu5g5ki0dv44jq67nstq6cr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719279259;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mmi01tga1d4eoe4c3ill14ka24tc0t40', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719279691;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('glv3ptp7c43clfk1g5ee08cjni4dolac', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719280042;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('27e93jc4q9kb1a473ma6s6fvhev3fo7b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719280493;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1cqe5hr8mitt1g72kk29rdtnvr3o5e2g', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719280821;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jhq955fbb42diu61kc2po87309ub3m2v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719281123;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n0q0tl37qr88b0sp0crvledb70597mtt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719281672;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ni3i00hv9qqaq73nqnpmvqngbs86lftc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719281999;user_id|s:1:\"2\";userName|s:5:\"Admin\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`) VALUES
('8tg40nhce3b3ov0dgs7bbp87gndac4n9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719282503;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('sev0gilmtmhiisu79t7q3rbkltnhme85', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719282966;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rrss2cs3k31vanahdejtfgjrpohre0s1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719283276;user_id|s:1:\"2\";userName|s:5:\"Admin\";success_message|s:29:\"We will soon contact with you\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('k3crdt833fdhrjufmf5tjk3tlm3b8jb6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719283585;user_id|s:1:\"2\";userName|s:5:\"Admin\";success_message|s:29:\"We will soon contact with you\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('kdejqpvp0lhkt9n95glr5926lbhkbokn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719283966;user_id|s:1:\"2\";userName|s:5:\"Admin\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('5tejlto8bbdhlg0gftecen12of2vohnr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719284459;user_id|s:1:\"2\";userName|s:5:\"Admin\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('17hdi6kc3pbbpjln28u9v92j4fgsuui7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719284881;user_id|s:1:\"2\";userName|s:5:\"Admin\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('ud49lcqo1d9oc6g4qi6ps7vfg8datj5l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719285209;user_id|s:1:\"2\";userName|s:5:\"Admin\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('lsfmu4rp9oudhhtr1ogvuv1jqat9trdu', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719285784;user_id|s:1:\"2\";userName|s:5:\"Admin\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('q6e0ja2nabrjs4ch6tubj7u3v9tnmrh6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719286108;user_id|s:1:\"2\";userName|s:5:\"Admin\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('lg2q5urjerbot3akoeknsf05iak9at29', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719286108;user_id|s:1:\"2\";userName|s:5:\"Admin\";__ci_vars|a:1:{s:15:\"success_message\";s:3:\"old\";}'),
('ndaqdpnp5825gt8bo4925mff6emk1ucn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719350974;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}'),
('41vj8bihlcv0amd22cd0vk8e7chonmdd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719351467;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ptuer87i1l7f2rmsj1mrkd9hiaqbg3lp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719351470;'),
('nolea00rr1ptjd0qdmabmdikhc5jbgjj', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719351899;'),
('hr0jpmpfc23ir42n2b1mhe4ilu6r8pid', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719352317;'),
('ek0pje0jm5a1gqdrpumndclt4gak655q', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719352632;'),
('fd32mroi5tfthdkgvf77ng0hbddfue3a', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719353011;'),
('nhk7subskdnflr39a9nemj4ju1mv4k9m', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719353316;'),
('t56o1febs61stleuvc2k7pu1644gm9o5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719354056;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3c4p8u82d2j66saohtge71jnfascqetl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719354421;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n1h5gomm8egv7vm6se31ccijo0b6d2pq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719354874;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mldtpko6u2v3er5nff8a0gkb9md7lipv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719355229;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('di1e4bid89lt5climuuhesv59g7vsumd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719355623;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1uo7nmic782ovma878c9vkfi6c4j9d7l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719355931;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jen3o04go22v64q0jt9cpj53ogoq6uej', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719356283;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('lugdo496714fofqk0tnb51rg7jrg0k4t', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719356638;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4ots8u2ko4bl17p1knpv842lnqv4usv5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719356986;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q7nmplvi17s5npm28npret50ntmcmnar', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719357329;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('noc4biouovjsv40h484n9tdthvgsiap9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719357632;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qt5vjvbo88guk9teisc79bgti5vmchud', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719358006;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('euavvkqbdug3opvjlu88ofa308up86ef', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719358859;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n66a0jmuf7h8n9r80hb9k5avrsgrrfia', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719359165;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n8ktgupk3hi5cl2sngojmvtc816350c1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719359495;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fqcucc0n3qqa72epitjl5sfh06iae56n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719360019;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('344kdqr5dbqrbrli4d8ofm15vcunujon', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719360443;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('l07bojns9iq3td4chqd7uhna32fbg02n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719360796;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('o6iav8tmq81h3k5v3r4se932aq3oc8rt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719361125;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('66v1tl7o8ft2hsb10pjkidq6k4l71omk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719361483;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cepkhmjg6bu0ltmr2f2vnmd69v0m4vd8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719361965;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cbmqrcd4md7n8dt8unarf206ovhmcs1v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719362507;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a0ij033uevau51mdbls71lqc18epsbvr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719362910;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fd4j0tlf8247u4j4ukhkbf5eqovnm0lq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719363215;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8djrekggckafa53gb7b1ulk3koovchqg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719363696;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jun47qs31alqmnumk0d8ffjcb71elsma', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719364089;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4c251hqe1p5pug7ukdi32f5ni3llsk8h', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719364723;'),
('a2f05bfqhr1alpss97qi0i95dujq0kd0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719365137;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cqspac32ike5qg516480p1oe5vcdb25h', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719365488;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1iks1i2a7vagt0l1si3mnophvm7givbd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719365979;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ocj19rhvkmnuurv4eu051o9m9r3heks8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719366328;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('v7oh89124ls5dg88e7hl3r6n1qf0ocrb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719366639;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jhsa1u7mek7gdg9rihb933edu49choqk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719367118;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5ssm1q50snfkk39qbm38320qel0f8pjc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719367586;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dfcd3d1cto1s73jujgmnnfdcrpejqekk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719367908;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9lfchovoiff0k3k6kmi279qsi258iq88', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719368211;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('893b8p047e1f93fvba7bfi49n87o8hpb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719368738;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cffa85341om7771dbr567r1t9aekp57i', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719369065;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('lek443kk1t2868revd9sc1tuf9a7hu69', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719369366;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('m37upetd8uiegcroof9ihpv6m13n7e3e', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719369366;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('h4a0domjh7rkcoj6acak7nd9u9jgurea', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719432748;'),
('7t0v26e96lnk2cu8jhh3o4khjmela7rq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719433053;'),
('76ijlq9ljb88a3s0oinqtvqv9eq2k7jb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719433643;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('taki57hktltl0q8ogg36nihg3u4e62s4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719434276;'),
('tmgc6fhsrl8boscj06jvfn19a83h9q4o', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1719434276;'),
('vgi4rpnt52c19rhbn2cql9trg5p577mf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720126056;'),
('d0l102ga7k7q8f5qbn6f282d3946425j', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720132530;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n1ovcod3lsm25fksnjijkg37674lbjk3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720132846;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q00igo6ljnbfptfh7e8sj29g3gm9agj0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720134018;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6imacoqfj4sobp88521v3h35fe21fa01', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720134465;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dd4bmg0gha6lltb8h703br2re8n0u6cu', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720134916;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('tnubl2kam9opr35h0lnrm3gfb65n79mn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720135422;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('doi05fgemlvllar827ucdkq0oatmpj0u', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720135937;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8sc3et29dnniouri9t67b4fqktgijroo', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720136247;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vi9f4bl1p9eafr1m4pcjd8mehbjqai29', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720136576;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c9mo2f558l21lc7om3jr9n47o8mf84am', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720136960;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('g917p0d3k3rfo60ljabh1lo9k92td1s4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720137268;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5tr4sp9m6s04h3fj45e8mv6rmv9gkgo6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720137578;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ib1vaugtkh881skg20969ifjpcdp05t5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720137578;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('r9342a77t8bg5k902r8s26vkadu7k2d3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720503939;'),
('br6scj7oiitlbe6lvp0vclo83vakras8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720504299;'),
('bo02gonh1j89lna4rq8erc9qf2vgcs2n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720504600;'),
('hf9bmmgv69jk17rjru4bekvheab284e0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720505385;'),
('p86uqcc85l78l742atlr63c3hqbtvhfi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720505860;'),
('e1otktftnu74na3mo8ms3uhmkjfnf4kj', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720506658;'),
('bhaup1tslillu15f26hai76g6ra6o4ee', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720506996;'),
('ceq0fuk9ddinv3l4g44lq9pebsmj4vho', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720507344;'),
('85lrgljcsua9pqibe3nib38mnbv39sdg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720507664;'),
('9e6e2vv4da31giglq0afm7cc76sd2v3j', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720507969;'),
('2i3i0jd5mer5vtck26dbv02ak2dmuv8e', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720508318;'),
('r274mjak1chom4jiamhn5887uvr2ubc5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720508804;'),
('etckfrdflbjt7i20a58rqrgl4jv9b06g', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720510142;'),
('b8jkt4rr71p8j9i9ui3hfvkv2f12quv4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720510495;'),
('eht8digu49kgmbnd4imc2si033hm6oea', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720510847;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('nedb6at49s09j0f6sntpjhh6nnsjnqp9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720511359;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('k5buqvjmnr4oh6onbrohedpp09bd4uou', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720512523;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jsnomg32mckfh7i9v5rjtsp2fflas3o9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720513290;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fpoojp5thdsgekoc3r56pqcjdo7vnljh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720513300;'),
('m2emreg71q8pkbvf8pa0ch1il9q6j2hl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720584803;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jabba7ojjcrjp8baouk0m4mjqrid9uh7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720585119;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('iddnfff2hql1gr63e2hknfu8ad82gmna', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720585501;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6n98hauqc7litkoi9p9p7g1qlpcd6rra', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720585827;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('bit65r6o3vjb7etaka92ombcijgc362r', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720586312;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9f1l95q5qrd8pdmcj8ioss275ti6pn23', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720586651;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('3lv5bubr5j2fafvgdg5e92qta8hhc4pb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720587177;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1m5p0nobcb5a2dr85qq7lc140qgm013g', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720588805;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5g3v3l37jgja84c1cb03dgmgd1ng8lvr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720589179;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('bru36qbtt5nc9fkocbddanjkg948dbbe', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720589693;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('11iqru3be4u15oaciuuh8pt0nh2f1ri5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720590060;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('csv2dp8itrbts5g05jr0ljle2q4gjost', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720590472;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('j0rhci3gjotp3brqguasrj9kop8q48e0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720591134;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n6lqok2tulkvevhjmcecqatsr39k1jt0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720591470;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4nj643484rfu80gb9m892btokcb9vqvh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720591773;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a9l7dt1p6ugemvbbpplhmk402hjhrbsp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720592529;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('uvdbifk0d2p7udjd6ph4kko9non09r71', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720593104;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('iqqlbpunvrdgu6kfr1nsjesnc8cp1i64', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720593413;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('cfp74o5p3gj05n3o133jnnrq2k1nnorv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720593736;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('uosah62n97lhdk11qfbuk9feoev4bbh1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720594119;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('rek5bplovo3arkdifibgs9l1rij8vcu9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720594119;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('s6hh7js0du54g2nnksm182l36r0tdvj8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720643825;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6b55bkidn7q8a2f1qmjjfj6octpfd80j', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720646233;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ajd30fvqpvl14m5eliiqa88m83njv8ak', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720647681;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('gj6m0s20maltrvjtotmsq7oicrqrc369', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720648006;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9t9i980bcur9km762b9dbvadbkdctnj0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720648410;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vbpbcl8rsgctq8fm3su56pr4nuubq7rn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720648793;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('c4rh65re0rudqq1ef4m2jod49r1k57h7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720649117;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('nlikir9nncrtg0b5ahv3fjum90fmg014', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720649421;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7prlub75it4rplmu0vlk2oq9rn81ohdf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720650113;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1687kisqfrm69626sc8pimsbnc0a6975', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720650699;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8g20sv74vifkf23q50rl8l0tvp4f5a26', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720651306;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('s5h43v94epl0fm62rp3d1fhtk4fnh4hv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720651677;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('aao4hi1n7cetgo60796cujfu4v68vpi8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720652122;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4t7r4i84c910jjk8betfq186f7uq713l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720652520;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('gbe7s6dim3prtkll3msn45lkojqtcs4n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720652900;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('aogachrq32i2pc8bhe6kt8mtktgo9nck', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720653416;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ipdkisudt0jiv9nn4r1loig9df9dvlcl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720654015;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('v4v5h83ohhm6mn4c9r48pokq0oqruofr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720654443;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dbr39k9tndi84t2a6moh028uurk32748', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720654752;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9v3f3p7gb22tc4evl6j2sflbuctgp83j', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720655103;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('aasq1t6o2sm0a74l9u8rp7uj7vbt4o1o', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720655884;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('e99rskb346dop9cp78esn14oeifpbifi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720656200;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('n08iivdesh9olvt64q762shqbmfm6iaj', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720657136;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vts5kbi47v59gt12s83321l21g051843', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720657525;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vucerpnbcdcj5p43kf1g6mqfe2g25q2q', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720657857;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('99882oq9r2mt5rn57b67sig8ukhnkqgm', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720658158;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('jed4k0op7ql7phld3s5tu8a3dg0rrpos', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720658868;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('htrhvql2gg13td7hqh8soiahek9ueq9b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720658868;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('i3d8ocbgeosa5iu12m1qod40651fsqgr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720726512;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('j3a1fgfcltamqav9lkkjp1ilrgrvu4bq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720726858;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('mkvbpnmbobkce4o2krl60ig3miqf53ko', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720727467;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('okqu9mmgg6jvuj7p9pk24dedepdlfotm', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720727899;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1bvpiungr00is1udog35gufv9rbk3bvd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720728248;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('sd3ss03htldqht5hfo3fs2qpnpr72d1m', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720729179;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('i02fvtpvv00b0p3t8cstqlh93nil34kd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720729504;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('sbubhe60bbiuvjp9hikken7vg17a0vmc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720729887;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('fq32ntiva9pcv4rbugoifr3il0dmgrlg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720730231;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('s6dptf4jfjpg6qblfq05p41mtv6prq03', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720730638;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8pq2kkglo5vepafoh6f9nq5hghc2vfti', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720731063;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('qsse8eh149vj091jm5r4ktc0bo5p5e0v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720731463;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9hhefgggggfvd8bphdk96m8elob1r6vh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720731765;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('smvoq5hmqqcam94cdo7df389a09lhd8l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720732322;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('7s9drhr846rf0lkdft73c36jk486ioul', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720732819;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dj7st4rt4j94bafi79052mnn9ivtflv0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720733165;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('08sggukud9egsodeb7sh84nnnlhufebc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720733473;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('uld2e44j50pm6098tv16g8auek0o7qsh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720733862;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ifmpegca49tt3v1pi0eh0la706l8oajh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720734236;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('4oieq76q6hvk5fb3s6jng9098g9vos0s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720734566;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('24ef645s0ji1om6trm78ftue0maaat96', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720734906;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('a8rbt7jucid8hvr8sefbaeru86bismai', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720735731;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0ee1fdv9695b65p0ciifbi1572op7ol7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720736158;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('osodgb3bcoc199370g9l3jt2tognl0rl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720736496;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('dd82hu4ehkcqamnqs4ndeli9flvept26', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720736866;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2ouvbv0erimhnnj3onspidi17kvg23d3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720737235;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('njasaru6dek31lq8vfj0opsugucqmnd2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720738191;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('q8iplqpi8cajqepanst61652g4kb34r7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720738632;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('9la3f5kd7q4p404frn3trudnd6hvj2an', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720739232;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('39m9fo2dfvlk54u5dom3dp2p2aijhpsq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720739601;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('8aaeugcv4cbm2rvhr5fbnq77l1gm7qin', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720739912;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('pipt6iaf7ifmfk1phjdj243uvhlbnqkc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720740218;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('0hvbs08ekshccd23nh47gd8hplgnel5b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720740766;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('411ar7eeck0p84uhft4jgkd8r7vmalld', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720741072;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('b345qlrhblf0l2acigtt5httd1qe7g37', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720741398;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('oumkvv8de38r7cqds0ngt4cq03npftlk', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720741953;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('gcbu03rgtb1rjdf3sb2eb3t36b42qfhq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720742316;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('6f5n44nt0mp1fgom3n6908a66rro7hi2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720742628;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('v48r83634l3qn5vulmj973257d6tb1rt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720743300;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('o1547fsjfqvbs11lal43qok32f4lbobf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720743794;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('r0p1b5um6uuer0q9b6f8aogsbibspgdt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720744183;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('2aqtpmgap6ehsmpbujtvrfm11cpnr2h2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720744667;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('csvtbfgo79qvldifabmiv79us9pooha4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720745589;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5di3p2622s9ai64k04311th7qitosjkn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720746253;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('b7ienae6ol7cahvr1uolc5r1b4r4bl18', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720747005;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('v27l7l7akmk0dkjft38cfv404dbqa188', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720747459;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('5jtana0n226eeobktl1oo8ld0nkrn6ep', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720747895;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('1uo2gughe5nnmfesvvq4tl0i5vh4o8d6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720748215;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('ar7nhljtfh7dvqhi1kcmhrlv64l9hhh4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720748215;user_id|s:1:\"2\";userName|s:5:\"Admin\";'),
('vg5odkc1u8r3mhvd6pasdng3tceit55p', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720759686;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"new\";}'),
('e77bujh6mhoj59fuudtf00mb4fg620jt', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720762640;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('3tisrfm34mk3tf32k3545b7tiltbha2q', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720763032;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('13540uh0c92335n272kht9pd1i349t1c', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720763426;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('bap6mtnj7gdu2m1r9ilahhc726f6u4nv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720763954;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('58bqtl3qtec23grn4kg3asutfv1c5bdl', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720764272;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('tseh8j3d6unviagti5s860k6gp7g0o6s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720764583;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('mmrvcgrje6n36ik87a01p2nluomlnfh3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720765066;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('jfehhsv89e3ml1o77qv265ctsvr0grh4', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720765736;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('ho6svtpdit16dtc4rhinhfr95ujbprbd', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720766095;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('8t9k06gdvub8bovsbkd5fpk768b0kab8', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720766473;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('7bga03sq8epv40t5ba1gpatl4r2l1bek', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720766786;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('0b570bdn2ffa88fpstrt8j7rasqt3a2c', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720767122;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('nj8838u9gjul94k6q7begu5s0001303l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720767122;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('blcdqvq7lot5ugssl7hs7he1t99utrb3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720811181;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('p42b88umm6llr3bcf89e6smijio24jpp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720811627;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('p0nh8bso75bbpgof8pk2kd0g3ubufeol', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720811939;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('ijbmuk9jksrqv2tlflga2up4jqq5apdg', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720812312;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('jjdvr4j84kiu652e83e9jm43rh4ac4ju', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720812649;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('g7c5cpj0d14m1nmvfbj8ud0248t0grfq', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720812994;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('dfvcege8lfop3q78nb0teusj1rfsmsbc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720813368;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('mc7tot6qg245qpmejms8i0uc90na6hur', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720813807;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('o7c7a2jdm9bp9cbqd6v19hs5j3mc4nr0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720814485;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('08frqkmiig3tpolfvriftajg0l92hluc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720814828;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('svs0b8b7drnor6ik75ljv2lmnp0iajpn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720815290;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('aq4k74em2eh75n3vrhbk5t7qpmpdh9pc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720815596;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('4at2qvkj2mpdde8lctv1mpi862d0o4ed', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720816570;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('nk6pohlm723mb6stpmimhcuq4fvsoarc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720817785;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('j02nvt9tnmg28o9ms77bol3e04uqnnn9', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720818232;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('06e1vjoi7tv4edn0tjpt9h0hogrsi0nn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720822099;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('1ibb21p3dj486ueid11fjdc6re3dhjtc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720822549;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('n9nvrjamrae9509vrgmpf5plbqnjt6ot', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720822852;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('b5p5kteivjh2pjaf7hfcs8jbtlvkbisi', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720823345;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('og1iqet30qpb3eo1hqto10265vamhfrp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720823984;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('hdc0mmgq5nule4sc4n0iivb02o9tbcd6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720824293;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('t7rcpuk9q0n0af1k72uj09ub3bo857bp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720824610;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('fjln8v2ghdn68ceajoqfgqb5kg44l36n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720825008;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('quoa23o9v2flf9d3hgu3kakf26a157c0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720825315;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('r21alai0m2bfglm58hrgd2s7l4cvq5pm', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720825816;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('73bc476g4v6hmnvc8vhosoibcv5edq0t', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720826871;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('tqj7takuq9rcv84smb8i7pmpbu4nsfur', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720827265;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('l6lu6t2pas6ra8hufg9g1998neh5n0am', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720827566;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('qt1cbdfmnv7tvphp4r4r02hplb4k6iv5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720828105;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('0lckd9gkloev1jkt3m5o4iurs98o3ofp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720828411;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('9q3sj5enp24s9d7mhb7r3vb7ejv77rl7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720828713;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('rdilfrchmabgsnr5rgp1v4kb6aqpdp6t', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720829026;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('hdnlvg7se6dr97v1hp9a3emfsqordpbp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720829599;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('2cgtefnvjpqi5p76f3o7oau88qpf9gd2', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720830184;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('0ur41t9c7720hv45jepd1dc996flhii6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720830526;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('do0d5gcj2ols5b4jodgbfc864sh55ip7', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720830915;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('ntkph7ncbad6lj3v6i19p47e1q0bmf3k', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720831264;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('l6t7trmdemcs3r80tmq8ld4go873h243', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720831597;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('m2q4ld2n0ed1ven7jlsm57q0shn21u4d', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720831917;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('171mnunmcsjggbo2t0s58jaq7q6961r1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720832221;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('7e14bi2vkp6t0d2a6t0g3b7id0ar451s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720832550;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('cr9ed96lni1lr3f87vkatuo75hmevjvh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720832960;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('rokgn82b1u5okbrjbbev23t65pt96vtp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720833267;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('t6iqr19g30pij7pui1ae4dbb0fa6lv51', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720834278;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('69jams8qopgm1deeutvr10h8iuhtai9n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720834595;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('sod4hfh0q7tp3og2fugm6q87m1b9iqbv', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720834595;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('lbl6kq06vgj74c3kuracqqkao5j6btqm', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720851123;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('h80k6n9h1scoorsputti1itnvr9frk77', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720851569;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('cr09osr600f10gpmphmbdlb7qaqjd8ke', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720851979;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('1fln7dgrn0569f9ls4phtb3t5rldk8j0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720852331;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('a8nhgigsu7lic4e37sv8oc0buebnhp4c', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720852764;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('pb1cb3b2i9q9hfdu01q89pdnpu963i00', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720853403;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('h6clnap73t4dbjq9sfm0osdji2o5neu5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720854093;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('bfogeri528cc2681egsbguftk1rcg8k0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720854572;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('rqr17l00lvfaadgtu1l6mr89u4sls3vr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720854952;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('lt022t6opoh37fk24ppm5drhdmi0n383', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720855299;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('p7qno2b60j1m1bc23v5k9pj6hjdnea1l', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720855603;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('h6vb295626nd5f2trpktrfpcik9b88m6', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720856365;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('ifm5bgi60tirs7c9m64rrg3fe4ert6ua', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720856721;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('7prv53r009cm8t9mj6sr1m0c9o3elovh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720856721;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('r8c3jq8rer55icdne3colb4runit854k', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720935756;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('frnihleeos4biiqa50rd6s2p2k2sfgff', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720936377;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('jofhgt09j8pakk93ehm8kvqqij88234v', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720937222;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('c371q9b7m1tkjfkgsht5lsd1spnp06or', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720938099;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('nmifn55kir92mf2c75nqtpdimo1tvnb1', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720940134;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('33u2917aq9ahqreq275809p0oo71fm5r', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720940439;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('qq0dn0crepgarok97juutj25r8bebf3n', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720940753;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('vtbe0uk6l3snb19brogbtlo0v1fbfsg5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720941215;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('a97s0k9jqm0g92v42068lf025urs55sa', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720941537;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('rurrkustd88rjs21qui9m63ccgg4kmoc', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720941844;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('jtkoo4887piu9jlh0grv948ju6aqk5j0', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720942306;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('f5r8br9hse4tpgrevg4brksu4635rmmf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720942659;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('1mqboafqntod3jt649upa121jurso1d5', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720943450;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('7809spe1ck8ov0icnba252bvetctdihb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720943932;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('h1ikb8shipdeia57ad2829iu35704v6p', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720944237;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('ieebl9va7dfnt7bp2flajronqqfcdivb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720944567;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('b3doi1helsci706uog88pcm1orta1rcn', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720945042;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('odmmkonv8h7u4vqvh5i36in91tpi5nla', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720945042;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('gbf6lq18nhsfk75bk2tsdvs7r03865jh', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720997516;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('8i43rap1opre4d3rfmioh669c3moi93d', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720998004;user_id|s:1:\"2\";userName|s:6:\"Admins\";'),
('02208obk5ccvd1e2ashtql7223142hgb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720998508;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"new\";}'),
('hlfff1l1vnn2nsa056ilgvlm9nnpf1en', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720998883;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:5:\"user1\";userType|s:5:\"guard\";'),
('7tflj2vd6e4d7i8p1759g536b9qk6aib', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720999203;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"2\";userName|s:5:\"user1\";userType|s:5:\"guard\";'),
('u71gg6216d19lerd6rp2dv7a58lusdho', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1720999737;status|s:146:\"<div class=\"alert alert-danger\" id=\"alert\"> <strong><i class=\"fa fa-warning\"></i> &nbsp; Some Problem Occurred !</strong> Please Try Again. </div>\";__ci_vars|a:1:{s:6:\"status\";s:3:\"old\";}user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('8odb1riplkgudng6vfs1bbksou15ulvs', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721000567;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('amr362f3lltm9tl02jq5vopdod7b7hkb', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721000942;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('as99m8ml47ik8ff1dpkd3bqa021mv4uf', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721001355;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('1nllunkd28f5j677gqu7ef4kd9shffu3', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721001678;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('bn0vktnd3i9c970vdt57ii2gnfs388mp', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721002207;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('l87bq9rs43epb7rquvaege57762enj30', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721002520;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('7kvaaig1ecc4mfkq5g07dbudf892usjr', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721002829;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('qf3ghh544ucbnab7udapq28tuboogf2s', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721003175;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('vrqc374h5u33p7t5pr8185neilqkl09r', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721003485;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";'),
('fvt3oocg8ckemr0rde9cevdrcquval8b', '::1', '', '0000-00-00 00:00:00', '__ci_last_regenerate|i:1721003485;user_id|s:1:\"6\";userName|s:5:\"Admin\";userType|s:5:\"admin\";');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tbl`
--

CREATE TABLE `contact_tbl` (
  `ContactId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Message` varchar(256) NOT NULL,
  `Reason` varchar(256) NOT NULL,
  `Crerated` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `IsDeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_tbl`
--

INSERT INTO `contact_tbl` (`ContactId`, `Name`, `Email`, `Mobile`, `Message`, `Reason`, `Crerated`, `IsDeleted`) VALUES
(17, 'test second', 'admin@gmail.com', '9285328828', 'gsggsggsgs', 'Printing & Designing Solutions,Mobility Solutions', '2024-07-09 07:36:57.393834', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_tbl`
--

CREATE TABLE `customer_tbl` (
  `CustId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ContactPerson` varchar(50) NOT NULL,
  `ContactNumber` bigint(20) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `GstNo` varchar(256) NOT NULL,
  `CinNo` varchar(256) NOT NULL,
  `PanNo` varchar(256) NOT NULL,
  `Address` longtext NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_tbl`
--

INSERT INTO `customer_tbl` (`CustId`, `Name`, `ContactPerson`, `ContactNumber`, `Email`, `GstNo`, `CinNo`, `PanNo`, `Address`, `CreatedAt`, `UpdatedAt`, `Status`) VALUES
(1, 'rajat kumars', 'digital shakhas', 64664646666, 'rajatpatel049599@gmail.com', '53466666', '243355', '8688685', 'dummy addresss', '2024-07-10 23:31:45.516360', '2024-07-10 23:31:45.516360', 0),
(4, 'Emily Johnson', 'digital shakha', 64664646666, 'admin123@gmail.com', '53466666', '243355', '53535', 'dummy address', '2024-07-11 22:17:19.112773', '2024-07-11 22:17:19.112773', 1),
(5, 'john wick', 'digital shakhas', 64664646666, 'john@gmail.com', 'dummy', '243355', '8688685', 'gsgete', '2024-07-14 23:43:30.516573', '2024-07-14 23:43:30.516573', 1);

-- --------------------------------------------------------

--
-- Table structure for table `description_category_tbl`
--

CREATE TABLE `description_category_tbl` (
  `CatId` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `description_category_tbl`
--

INSERT INTO `description_category_tbl` (`CatId`, `Title`, `Status`, `CreatedAt`, `UpdatedAt`) VALUES
(2, 'security service', 1, '2024-07-10 22:24:47.769551', '2024-07-10 22:24:47.769551');

-- --------------------------------------------------------

--
-- Table structure for table `description_tbl`
--

CREATE TABLE `description_tbl` (
  `DescId` int(11) NOT NULL,
  `Category` varchar(256) NOT NULL,
  `Title` varchar(256) NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `description_tbl`
--

INSERT INTO `description_tbl` (`DescId`, `Category`, `Title`, `Status`, `CreatedAt`, `UpdatedAt`) VALUES
(2, '', 'Security Guard', 1, '2024-07-11 23:11:00.217396', '2024-07-11 23:11:00.217396'),
(3, '', 'Security Supervisor', 1, '2024-07-11 23:28:15.524047', '2024-07-11 23:28:15.524047'),
(4, '', 'House Keeping Staff', 1, '2024-07-12 18:51:09.733065', '2024-07-12 18:51:09.733065');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_tbl`
--

CREATE TABLE `invoice_item_tbl` (
  `ItemId` int(11) NOT NULL,
  `InvoiceId` int(11) NOT NULL,
  `ItemName` varchar(256) NOT NULL,
  `Qty` varchar(200) NOT NULL,
  `Rate` varchar(200) NOT NULL,
  `Amount` varchar(200) NOT NULL,
  `ManDays` varchar(100) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_item_tbl`
--

INSERT INTO `invoice_item_tbl` (`ItemId`, `InvoiceId`, `ItemName`, `Qty`, `Rate`, `Amount`, `ManDays`, `CreatedAt`, `UpdatedAt`) VALUES
(9, 7, 'Security Guard', '2', '10000', '6451.613', '20', '2024-07-14 22:47:33.396907', '2024-07-14 22:47:33.396907'),
(10, 7, 'Security Supervisor', '3', '20000', '19354.839', '30', '2024-07-14 22:47:33.429052', '2024-07-14 22:47:33.429052'),
(11, 8, 'Security Guard', '3', '20000', '19354.839', '30', '2024-07-14 23:35:18.716385', '2024-07-14 23:35:18.716385');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_tbl`
--

CREATE TABLE `invoice_tbl` (
  `InvoiceId` int(11) NOT NULL,
  `InvoiceNo` varchar(200) NOT NULL,
  `InvoiceYear` varchar(150) NOT NULL,
  `InvoiceMonth` varchar(150) NOT NULL,
  `PlaceToSupply` varchar(200) NOT NULL,
  `HsnCode` varchar(200) NOT NULL,
  `ItemCategory` varchar(250) NOT NULL,
  `Cgst` varchar(250) NOT NULL,
  `Sgst` varchar(250) NOT NULL,
  `Igst` varchar(250) NOT NULL,
  `TexableAmount` varchar(250) NOT NULL,
  `TotalAmount` varchar(250) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `CreatedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_tbl`
--

INSERT INTO `invoice_tbl` (`InvoiceId`, `InvoiceNo`, `InvoiceYear`, `InvoiceMonth`, `PlaceToSupply`, `HsnCode`, `ItemCategory`, `Cgst`, `Sgst`, `Igst`, `TexableAmount`, `TotalAmount`, `CustomerName`, `CreatedAt`, `UpdatedAt`, `CreatedBy`) VALUES
(7, '14335454', '2023', 'january', 'cg', 'hsni9999', 'Guarding Service', '2322.581', '2322.581', 'not available', '25806.452', '30451.614', 'Emily Johnson', '2024-07-14 22:47:33.337926', '2024-07-14 22:47:33.337926', 'user1'),
(8, '14335454', '2023', 'january', 'cg', 'hsni9999', 'Guarding Service', '1741.936', '1741.936', 'not available', '19354.839', '22838.711', 'Emily Johnson', '2024-07-14 23:35:18.653642', '2024-07-14 23:35:18.653642', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `month_tbl`
--

CREATE TABLE `month_tbl` (
  `MonthId` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Status` int(10) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `month_tbl`
--

INSERT INTO `month_tbl` (`MonthId`, `Title`, `Status`, `CreatedAt`, `UpdatedAt`) VALUES
(3, 'january', 1, '2024-07-11 22:23:24.760774', '2024-07-11 22:23:24.760774'),
(4, 'february', 1, '2024-07-12 05:41:41.835969', '2024-07-12 05:41:41.835969');

-- --------------------------------------------------------

--
-- Table structure for table `qr_tbl`
--

CREATE TABLE `qr_tbl` (
  `QrId` int(11) NOT NULL,
  `ImagePath` varchar(256) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `IsDeleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_tbl`
--

INSERT INTO `qr_tbl` (`QrId`, `ImagePath`, `CreatedAt`, `UpdatedAt`, `IsDeleted`) VALUES
(11, 'back.png', '2024-07-04 23:44:02.847953', '2024-07-04 23:44:02.847953', 0),
(12, 'hero_bg.png', '2024-07-04 23:44:26.958920', '2024-07-04 23:44:26.958920', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_tbl`
--

CREATE TABLE `role_tbl` (
  `RoleId` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Status` int(10) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_tbl`
--

INSERT INTO `role_tbl` (`RoleId`, `Title`, `Status`, `CreatedAt`, `UpdatedAt`) VALUES
(4, 'admin', 1, '2024-07-11 20:04:37.755864', '2024-07-11 20:04:37.755864'),
(5, 'guard', 1, '2024-07-11 20:25:24.778367', '2024-07-11 20:25:24.778367');

-- --------------------------------------------------------

--
-- Table structure for table `seo_tbl`
--

CREATE TABLE `seo_tbl` (
  `SeoId` int(11) NOT NULL,
  `SiteTitle` varchar(100) NOT NULL,
  `Logo` varchar(256) NOT NULL,
  `Favicon` varchar(256) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Address` longtext NOT NULL,
  `Website` varchar(256) NOT NULL,
  `GstNo` varchar(256) NOT NULL,
  `CinNo` varchar(256) NOT NULL,
  `PanNo` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_tbl`
--

INSERT INTO `seo_tbl` (`SeoId`, `SiteTitle`, `Logo`, `Favicon`, `Email`, `Address`, `Website`, `GstNo`, `CinNo`, `PanNo`) VALUES
(1, 'TCS', 'tcs_ny-removebg-preview.png', 'favicon.ico', 'info@tcsgroups.in', 'dummy address', 'http://localhost/tcs', 'dummy', '24335', '53535');

-- --------------------------------------------------------

--
-- Table structure for table `state_tbl`
--

CREATE TABLE `state_tbl` (
  `StateId` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL,
  `Code` int(11) NOT NULL,
  `Cgst` int(11) NOT NULL,
  `Sgst` int(11) NOT NULL,
  `Igst` int(11) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state_tbl`
--

INSERT INTO `state_tbl` (`StateId`, `Title`, `Status`, `Code`, `Cgst`, `Sgst`, `Igst`, `CreatedAt`, `UpdatedAt`) VALUES
(4, 'cg', 1, 22, 9, 9, 0, '2024-07-11 00:35:56.651950', '2024-07-11 00:35:56.651950'),
(5, 'ORISSA', 1, 21, 9, 9, 18, '2024-07-12 00:01:51.025450', '2024-07-12 00:01:51.025450');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `UserId` bigint(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UserStatus` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`UserId`, `Username`, `Password`, `FullName`, `Email`, `Phone`, `UserType`, `CreatedAt`, `UpdatedAt`, `UserStatus`) VALUES
(2, 'user1', '$2y$10$UBC6V8OLkdQFHTd6sTW5RuRsIT2CMkHZJZVdgOhxKVXcpZMaJ/tsy', 'user1', 'user1@gmail.com', '534535535s', 'guard', '2024-06-10 21:10:59.882789', '2024-06-10 21:10:59.882789', 1),
(6, 'Admin', '$2y$10$5FGrMIbCpEDEp.dKML8W9u6P0yZYP8lMFLQu89l9dVZn/73FjbwKu', 'admin', 'admin123@gmail.com', '9285328828', 'admin', '2024-07-14 23:00:02.518623', '2024-07-14 23:00:02.518623', 1);

-- --------------------------------------------------------

--
-- Table structure for table `year_tbl`
--

CREATE TABLE `year_tbl` (
  `YearId` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `UpdatedAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `year_tbl`
--

INSERT INTO `year_tbl` (`YearId`, `Title`, `Status`, `CreatedAt`, `UpdatedAt`) VALUES
(2, '2023', 1, '2024-07-10 06:08:59.928352', '2024-07-10 06:08:59.928352'),
(3, '2024', 1, '2024-07-12 05:41:27.287076', '2024-07-12 05:41:27.287076');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  ADD PRIMARY KEY (`ContactId`);

--
-- Indexes for table `customer_tbl`
--
ALTER TABLE `customer_tbl`
  ADD PRIMARY KEY (`CustId`);

--
-- Indexes for table `description_category_tbl`
--
ALTER TABLE `description_category_tbl`
  ADD PRIMARY KEY (`CatId`);

--
-- Indexes for table `description_tbl`
--
ALTER TABLE `description_tbl`
  ADD PRIMARY KEY (`DescId`);

--
-- Indexes for table `invoice_item_tbl`
--
ALTER TABLE `invoice_item_tbl`
  ADD PRIMARY KEY (`ItemId`);

--
-- Indexes for table `invoice_tbl`
--
ALTER TABLE `invoice_tbl`
  ADD PRIMARY KEY (`InvoiceId`);

--
-- Indexes for table `month_tbl`
--
ALTER TABLE `month_tbl`
  ADD PRIMARY KEY (`MonthId`);

--
-- Indexes for table `qr_tbl`
--
ALTER TABLE `qr_tbl`
  ADD PRIMARY KEY (`QrId`);

--
-- Indexes for table `role_tbl`
--
ALTER TABLE `role_tbl`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `seo_tbl`
--
ALTER TABLE `seo_tbl`
  ADD PRIMARY KEY (`SeoId`);

--
-- Indexes for table `state_tbl`
--
ALTER TABLE `state_tbl`
  ADD PRIMARY KEY (`StateId`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `year_tbl`
--
ALTER TABLE `year_tbl`
  ADD PRIMARY KEY (`YearId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  MODIFY `ContactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_tbl`
--
ALTER TABLE `customer_tbl`
  MODIFY `CustId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `description_category_tbl`
--
ALTER TABLE `description_category_tbl`
  MODIFY `CatId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `description_tbl`
--
ALTER TABLE `description_tbl`
  MODIFY `DescId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_item_tbl`
--
ALTER TABLE `invoice_item_tbl`
  MODIFY `ItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invoice_tbl`
--
ALTER TABLE `invoice_tbl`
  MODIFY `InvoiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `month_tbl`
--
ALTER TABLE `month_tbl`
  MODIFY `MonthId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qr_tbl`
--
ALTER TABLE `qr_tbl`
  MODIFY `QrId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role_tbl`
--
ALTER TABLE `role_tbl`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seo_tbl`
--
ALTER TABLE `seo_tbl`
  MODIFY `SeoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state_tbl`
--
ALTER TABLE `state_tbl`
  MODIFY `StateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `UserId` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `year_tbl`
--
ALTER TABLE `year_tbl`
  MODIFY `YearId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
