.class Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitStripAccents"
.end annotation


# static fields
.field private static final blacklist java6Exception:Ljava/lang/Throwable;

.field private static final blacklist java6NormalizeMethod:Ljava/lang/reflect/Method;

.field private static final blacklist java6NormalizerFormNFD:Ljava/lang/Object;

.field private static final blacklist java6Pattern:Ljava/util/regex/Pattern;

.field private static final blacklist sunDecomposeMethod:Ljava/lang/reflect/Method;

.field private static final blacklist sunException:Ljava/lang/Throwable;

.field private static final blacklist sunPattern:Ljava/util/regex/Pattern;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetjava6Exception()Ljava/lang/Throwable;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetjava6NormalizeMethod()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetjava6NormalizerFormNFD()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetjava6Pattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsunDecomposeMethod()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsunException()Ljava/lang/Throwable;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsunPattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 13

    .line 712
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;

    .line 717
    sput-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "_java6NormalizerFormNFD":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 723
    .local v1, "_java6NormalizeMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 724
    .local v2, "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 725
    .local v3, "_java6Exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 729
    .local v4, "_sunException":Ljava/lang/Throwable;
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string v9, "java.text.Normalizer$Form"

    .line 730
    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 731
    .local v8, "normalizerFormClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "NFD"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .line 732
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "java.text.Normalizer"

    .line 733
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 734
    .local v9, "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "normalize"

    new-array v11, v5, [Ljava/lang/Class;

    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v11, v7

    aput-object v8, v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_48} :catch_4a

    move-object v1, v5

    .line 748
    .end local v8    # "normalizerFormClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_73

    .line 736
    :catch_4a
    move-exception v8

    .line 738
    .local v8, "e1":Ljava/lang/Exception;
    move-object v3, v8

    .line 741
    :try_start_4c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "sun.text.Normalizer"

    .line 742
    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 743
    .restart local v9    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "decompose"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v7

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v11, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6f} :catch_71

    move-object v2, v5

    .line 747
    .end local v9    # "normalizerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_73

    .line 745
    :catch_71
    move-exception v5

    .line 746
    .local v5, "e2":Ljava/lang/Exception;
    move-object v4, v5

    .line 751
    .end local v5    # "e2":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/lang/Exception;
    :goto_73
    sput-object v3, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;

    .line 752
    sput-object v0, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;

    .line 753
    sput-object v1, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;

    .line 754
    sput-object v4, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;

    .line 755
    sput-object v2, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;

    .line 756
    .end local v0    # "_java6NormalizerFormNFD":Ljava/lang/Object;
    .end local v1    # "_java6NormalizeMethod":Ljava/lang/reflect/Method;
    .end local v2    # "_sunDecomposeMethod":Ljava/lang/reflect/Method;
    .end local v3    # "_java6Exception":Ljava/lang/Throwable;
    .end local v4    # "_sunException":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
