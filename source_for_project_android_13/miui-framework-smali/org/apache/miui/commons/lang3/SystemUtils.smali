.class public Lorg/apache/miui/commons/lang3/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final blacklist AWT_TOOLKIT:Ljava/lang/String;

.field public static final blacklist FILE_ENCODING:Ljava/lang/String;

.field public static final blacklist FILE_SEPARATOR:Ljava/lang/String;

.field public static final blacklist IS_JAVA_1_1:Z

.field public static final blacklist IS_JAVA_1_2:Z

.field public static final blacklist IS_JAVA_1_3:Z

.field public static final blacklist IS_JAVA_1_4:Z

.field public static final blacklist IS_JAVA_1_5:Z

.field public static final blacklist IS_JAVA_1_6:Z

.field public static final blacklist IS_JAVA_1_7:Z

.field public static final blacklist IS_OS_AIX:Z

.field public static final blacklist IS_OS_FREE_BSD:Z

.field public static final blacklist IS_OS_HP_UX:Z

.field public static final blacklist IS_OS_IRIX:Z

.field public static final blacklist IS_OS_LINUX:Z

.field public static final blacklist IS_OS_MAC:Z

.field public static final blacklist IS_OS_MAC_OSX:Z

.field public static final blacklist IS_OS_NET_BSD:Z

.field public static final blacklist IS_OS_OPEN_BSD:Z

.field public static final blacklist IS_OS_OS2:Z

.field public static final blacklist IS_OS_SOLARIS:Z

.field public static final blacklist IS_OS_SUN_OS:Z

.field public static final blacklist IS_OS_UNIX:Z

.field public static final blacklist IS_OS_WINDOWS:Z

.field public static final blacklist IS_OS_WINDOWS_2000:Z

.field public static final blacklist IS_OS_WINDOWS_2003:Z

.field public static final blacklist IS_OS_WINDOWS_2008:Z

.field public static final blacklist IS_OS_WINDOWS_7:Z

.field public static final blacklist IS_OS_WINDOWS_95:Z

.field public static final blacklist IS_OS_WINDOWS_98:Z

.field public static final blacklist IS_OS_WINDOWS_ME:Z

.field public static final blacklist IS_OS_WINDOWS_NT:Z

.field public static final blacklist IS_OS_WINDOWS_VISTA:Z

.field public static final blacklist IS_OS_WINDOWS_XP:Z

.field public static final blacklist JAVA_AWT_FONTS:Ljava/lang/String;

.field public static final blacklist JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

.field public static final blacklist JAVA_AWT_HEADLESS:Ljava/lang/String;

.field public static final blacklist JAVA_AWT_PRINTERJOB:Ljava/lang/String;

.field public static final blacklist JAVA_CLASS_PATH:Ljava/lang/String;

.field public static final blacklist JAVA_CLASS_VERSION:Ljava/lang/String;

.field public static final blacklist JAVA_COMPILER:Ljava/lang/String;

.field public static final blacklist JAVA_ENDORSED_DIRS:Ljava/lang/String;

.field public static final blacklist JAVA_EXT_DIRS:Ljava/lang/String;

.field public static final blacklist JAVA_HOME:Ljava/lang/String;

.field private static final blacklist JAVA_HOME_KEY:Ljava/lang/String; = "java.home"

.field public static final blacklist JAVA_IO_TMPDIR:Ljava/lang/String;

.field private static final blacklist JAVA_IO_TMPDIR_KEY:Ljava/lang/String; = "java.io.tmpdir"

.field public static final blacklist JAVA_LIBRARY_PATH:Ljava/lang/String;

.field public static final blacklist JAVA_RUNTIME_NAME:Ljava/lang/String;

.field public static final blacklist JAVA_RUNTIME_VERSION:Ljava/lang/String;

.field public static final blacklist JAVA_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final blacklist JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final blacklist JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field private static final blacklist JAVA_SPECIFICATION_VERSION_AS_ENUM:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final blacklist JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

.field public static final blacklist JAVA_VENDOR:Ljava/lang/String;

.field public static final blacklist JAVA_VENDOR_URL:Ljava/lang/String;

.field public static final blacklist JAVA_VERSION:Ljava/lang/String;

.field public static final blacklist JAVA_VM_INFO:Ljava/lang/String;

.field public static final blacklist JAVA_VM_NAME:Ljava/lang/String;

.field public static final blacklist JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final blacklist JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final blacklist JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final blacklist JAVA_VM_VENDOR:Ljava/lang/String;

.field public static final blacklist JAVA_VM_VERSION:Ljava/lang/String;

.field public static final blacklist LINE_SEPARATOR:Ljava/lang/String;

.field public static final blacklist OS_ARCH:Ljava/lang/String;

.field public static final blacklist OS_NAME:Ljava/lang/String;

.field private static final blacklist OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final blacklist OS_VERSION:Ljava/lang/String;

.field public static final blacklist PATH_SEPARATOR:Ljava/lang/String;

.field public static final blacklist USER_COUNTRY:Ljava/lang/String;

.field public static final blacklist USER_DIR:Ljava/lang/String;

.field private static final blacklist USER_DIR_KEY:Ljava/lang/String; = "user.dir"

.field public static final blacklist USER_HOME:Ljava/lang/String;

.field private static final blacklist USER_HOME_KEY:Ljava/lang/String; = "user.home"

.field public static final blacklist USER_LANGUAGE:Ljava/lang/String;

.field public static final blacklist USER_NAME:Ljava/lang/String;

.field public static final blacklist USER_TIMEZONE:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 90
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->AWT_TOOLKIT:Ljava/lang/String;

    .line 112
    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->FILE_ENCODING:Ljava/lang/String;

    .line 130
    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->FILE_SEPARATOR:Ljava/lang/String;

    .line 148
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_AWT_FONTS:Ljava/lang/String;

    .line 166
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

    .line 187
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    .line 205
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_AWT_PRINTERJOB:Ljava/lang/String;

    .line 223
    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_CLASS_PATH:Ljava/lang/String;

    .line 241
    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_CLASS_VERSION:Ljava/lang/String;

    .line 260
    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_COMPILER:Ljava/lang/String;

    .line 278
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_ENDORSED_DIRS:Ljava/lang/String;

    .line 296
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_EXT_DIRS:Ljava/lang/String;

    .line 314
    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_HOME:Ljava/lang/String;

    .line 332
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_IO_TMPDIR:Ljava/lang/String;

    .line 350
    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    .line 369
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_RUNTIME_NAME:Ljava/lang/String;

    .line 388
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_RUNTIME_VERSION:Ljava/lang/String;

    .line 406
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_NAME:Ljava/lang/String;

    .line 424
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 442
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 443
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION_AS_ENUM:Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 462
    nop

    .line 463
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

    .line 481
    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VENDOR:Ljava/lang/String;

    .line 499
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VENDOR_URL:Ljava/lang/String;

    .line 517
    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    .line 536
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VM_INFO:Ljava/lang/String;

    .line 554
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VM_NAME:Ljava/lang/String;

    .line 572
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

    .line 590
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 608
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 626
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VM_VENDOR:Ljava/lang/String;

    .line 644
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_VM_VERSION:Ljava/lang/String;

    .line 662
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 680
    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->OS_ARCH:Ljava/lang/String;

    .line 698
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->OS_NAME:Ljava/lang/String;

    .line 716
    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->OS_VERSION:Ljava/lang/String;

    .line 734
    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->PATH_SEPARATOR:Ljava/lang/String;

    .line 754
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_132

    .line 755
    const-string v0, "user.region"

    goto :goto_133

    :cond_132
    nop

    :goto_133
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->USER_COUNTRY:Ljava/lang/String;

    .line 773
    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->USER_DIR:Ljava/lang/String;

    .line 791
    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->USER_HOME:Ljava/lang/String;

    .line 810
    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->USER_LANGUAGE:Ljava/lang/String;

    .line 828
    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->USER_NAME:Ljava/lang/String;

    .line 846
    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->USER_TIMEZONE:Ljava/lang/String;

    .line 861
    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_JAVA_1_1:Z

    .line 871
    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_JAVA_1_2:Z

    .line 881
    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_JAVA_1_3:Z

    .line 891
    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_JAVA_1_4:Z

    .line 901
    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_JAVA_1_5:Z

    .line 911
    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_JAVA_1_6:Z

    .line 923
    const-string v0, "1.7"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_JAVA_1_7:Z

    .line 943
    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_AIX:Z

    .line 955
    const-string v1, "HP-UX"

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_HP_UX:Z

    .line 967
    const-string v2, "Irix"

    invoke-static {v2}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_IRIX:Z

    .line 979
    const-string v3, "Linux"

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1c6

    const-string v3, "LINUX"

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c4

    goto :goto_1c6

    :cond_1c4
    move v3, v4

    goto :goto_1c7

    :cond_1c6
    :goto_1c6
    move v3, v5

    :goto_1c7
    sput-boolean v3, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_LINUX:Z

    .line 991
    const-string v6, "Mac"

    invoke-static {v6}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_MAC:Z

    .line 1003
    const-string v6, "Mac OS X"

    invoke-static {v6}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_MAC_OSX:Z

    .line 1015
    const-string v7, "FreeBSD"

    invoke-static {v7}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_FREE_BSD:Z

    .line 1027
    const-string v8, "OpenBSD"

    invoke-static {v8}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_OPEN_BSD:Z

    .line 1039
    const-string v9, "NetBSD"

    invoke-static {v9}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_NET_BSD:Z

    .line 1051
    const-string v10, "OS/2"

    invoke-static {v10}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_OS2:Z

    .line 1063
    const-string v10, "Solaris"

    invoke-static {v10}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_SOLARIS:Z

    .line 1075
    const-string v11, "SunOS"

    invoke-static {v11}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_SUN_OS:Z

    .line 1087
    if-nez v0, :cond_21d

    if-nez v1, :cond_21d

    if-nez v2, :cond_21d

    if-nez v3, :cond_21d

    if-nez v6, :cond_21d

    if-nez v10, :cond_21d

    if-nez v11, :cond_21d

    if-nez v7, :cond_21d

    if-nez v8, :cond_21d

    if-eqz v9, :cond_21e

    :cond_21d
    move v4, v5

    :cond_21e
    sput-boolean v4, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_UNIX:Z

    .line 1100
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS:Z

    .line 1112
    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2000:Z

    .line 1124
    const-string v1, "5.2"

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2003:Z

    .line 1136
    const-string v1, "Windows Server 2008"

    const-string v2, "6.1"

    invoke-static {v1, v2}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2008:Z

    .line 1148
    const-string v1, "Windows 9"

    const-string v3, "4.0"

    invoke-static {v1, v3}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_95:Z

    .line 1161
    const-string v3, "4.1"

    invoke-static {v1, v3}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_98:Z

    .line 1174
    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_ME:Z

    .line 1187
    const-string v1, "Windows NT"

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_NT:Z

    .line 1200
    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_XP:Z

    .line 1213
    const-string v1, "6.0"

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_VISTA:Z

    .line 1225
    invoke-static {v0, v2}, Lorg/apache/miui/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/miui/commons/lang3/SystemUtils;->IS_OS_WINDOWS_7:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    return-void
.end method

.method public static blacklist getJavaHome()Ljava/io/File;
    .registers 2

    .line 1239
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getJavaIoTmpDir()Ljava/io/File;
    .registers 2

    .line 1254
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getJavaVersionMatches(Ljava/lang/String;)Z
    .registers 2
    .param p0, "versionPrefix"    # Ljava/lang/String;

    .line 1266
    sget-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/miui/commons/lang3/SystemUtils;->isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "osNamePrefix"    # Ljava/lang/String;
    .param p1, "osVersionPrefix"    # Ljava/lang/String;

    .line 1277
    sget-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->OS_NAME:Ljava/lang/String;

    sget-object v1, Lorg/apache/miui/commons/lang3/SystemUtils;->OS_VERSION:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/miui/commons/lang3/SystemUtils;->isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist getOSMatchesName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "osNamePrefix"    # Ljava/lang/String;

    .line 1287
    sget-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/miui/commons/lang3/SystemUtils;->isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "property"    # Ljava/lang/String;

    .line 1305
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1306
    :catch_5
    move-exception v0

    .line 1308
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1310
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getUserDir()Ljava/io/File;
    .registers 2

    .line 1326
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getUserHome()Ljava/io/File;
    .registers 2

    .line 1341
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist isJavaAwtHeadless()Z
    .registers 2

    .line 1353
    sget-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isJavaVersionAtLeast(Lorg/apache/miui/commons/lang3/JavaVersion;)Z
    .registers 2
    .param p0, "requiredVersion"    # Lorg/apache/miui/commons/lang3/JavaVersion;

    .line 1372
    sget-object v0, Lorg/apache/miui/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION_AS_ENUM:Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-virtual {v0, p0}, Lorg/apache/miui/commons/lang3/JavaVersion;->atLeast(Lorg/apache/miui/commons/lang3/JavaVersion;)Z

    move-result v0

    return v0
.end method

.method static blacklist isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "versionPrefix"    # Ljava/lang/String;

    .line 1388
    if-nez p0, :cond_4

    .line 1389
    const/4 v0, 0x0

    return v0

    .line 1391
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "osName"    # Ljava/lang/String;
    .param p1, "osVersion"    # Ljava/lang/String;
    .param p2, "osNamePrefix"    # Ljava/lang/String;
    .param p3, "osVersionPrefix"    # Ljava/lang/String;

    .line 1407
    const/4 v0, 0x0

    if-eqz p0, :cond_14

    if-nez p1, :cond_6

    goto :goto_14

    .line 1410
    :cond_6
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    .line 1408
    :cond_14
    :goto_14
    return v0
.end method

.method static blacklist isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "osName"    # Ljava/lang/String;
    .param p1, "osNamePrefix"    # Ljava/lang/String;

    .line 1424
    if-nez p0, :cond_4

    .line 1425
    const/4 v0, 0x0

    return v0

    .line 1427
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
