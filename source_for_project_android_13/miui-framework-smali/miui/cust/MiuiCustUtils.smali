.class public final Lmiui/cust/MiuiCustUtils;
.super Ljava/lang/Object;
.source "MiuiCustUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cust/MiuiCustUtils$ClassInfo;
    }
.end annotation


# static fields
.field static final blacklist CUST_CLS_NULL_REPLACE:Ljava/lang/String; = "-"

.field static final blacklist CUST_CLS_SUFFIX_DEF:Ljava/lang/String; = "Impl:-"

.field static final blacklist CUST_CLS_SUFFIX_SEP:Ljava/lang/String; = ":"

.field static blacklist CUST_VERSION:Z = false

.field static final blacklist DEBUG_I:Z = false

.field static final blacklist EXCEPTION_WHEN_ERROR:Z = true

.field static final blacklist FACTORY_ARRAY:[Ljava/lang/String;

.field static blacklist FILE_ONLY_IN_CUST:Ljava/lang/String; = null

.field static final blacklist MIUICUST_PREFIX:Ljava/lang/String; = ".MiuiCust"

.field static final blacklist PROP_CUST_CLS_SUFFIX:Ljava/lang/String; = "cust.cls.suffixes"

.field static final blacklist TAG:Ljava/lang/String; = "MiuiCust"

.field private static blacklist mClassCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/cust/MiuiCustUtils$ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mConstructorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static blacklist mPrimitiveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static blacklist mRegion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/cust/MiuiCustUtils;->CUST_VERSION:Z

    .line 20
    const-string v0, "/system/etc/permissions/miuicustframework.xml"

    sput-object v0, Lmiui/cust/MiuiCustUtils;->FILE_ONLY_IN_CUST:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/cust/MiuiCustUtils;->FILE_ONLY_IN_CUST:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lmiui/cust/MiuiCustUtils;->CUST_VERSION:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/cust/MiuiCustUtils;->mClassCache:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/cust/MiuiCustUtils;->mConstructorCache:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    .line 34
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "cust.cls.suffixes"

    const-string v1, "Impl:-"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cust/MiuiCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "i":I
    :goto_80
    sget-object v1, Lmiui/cust/MiuiCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    .line 46
    .local v1, "str":[Ljava/lang/String;
    array-length v2, v1

    if-lt v0, v2, :cond_8a

    .line 47
    nop

    .line 54
    .end local v0    # "i":I
    .end local v1    # "str":[Ljava/lang/String;
    invoke-static {}, Lmiui/cust/MiuiCustUtils;->initRegionInfo()V

    .line 55
    return-void

    .line 50
    .restart local v0    # "i":I
    .restart local v1    # "str":[Ljava/lang/String;
    :cond_8a
    aget-object v2, v1, v0

    if-eqz v2, :cond_98

    aget-object v2, v1, v0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 51
    :cond_98
    sget-object v2, Lmiui/cust/MiuiCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 44
    .end local v1    # "str":[Ljava/lang/String;
    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_80
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    .local p0, "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmiui/cust/MiuiCustUtils;->createObj(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createObj(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lmiui/cust/MiuiCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lmiui/cust/MiuiCustUtils;->getClassByName(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/String;)Lmiui/cust/MiuiCustUtils$ClassInfo;

    move-result-object v1

    .line 64
    .local v1, "clsInfo":Lmiui/cust/MiuiCustUtils$ClassInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 65
    return-object v2

    .line 68
    :cond_b
    invoke-static {v1, p2}, Lmiui/cust/MiuiCustUtils;->findConstructor(Lmiui/cust/MiuiCustUtils$ClassInfo;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 69
    .local v3, "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v3, :cond_2f

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constructor not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lmiui/cust/MiuiCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v4, v5}, Lmiui/cust/MiuiCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-object v2

    .line 75
    :cond_2f
    :try_start_2f
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_33
    .catch Ljava/lang/InstantiationException; {:try_start_2f .. :try_end_33} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_33} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_33} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_33} :catch_35
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2f .. :try_end_33} :catch_35

    move-object v0, v2

    .line 76
    return-object v0

    .line 77
    :catch_35
    move-exception v2

    .line 80
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create cust obj fail. Class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lmiui/cust/MiuiCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", constructor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lmiui/cust/MiuiCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v2    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method static blacklist findConstructor(Lmiui/cust/MiuiCustUtils$ClassInfo;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 12
    .param p0, "info"    # Lmiui/cust/MiuiCustUtils$ClassInfo;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cust/MiuiCustUtils$ClassInfo;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 105
    const-class v0, Lmiui/cust/MiuiCustUtils;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-object v1, p0, Lmiui/cust/MiuiCustUtils$ClassInfo;->mOrgClsName:Ljava/lang/String;

    invoke-static {v1, p1}, Lmiui/cust/MiuiCustUtils;->getArgsType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lmiui/cust/MiuiCustUtils;->mConstructorCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 108
    .local v2, "useConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_15

    .line 109
    monitor-exit v0

    return-object v2

    .line 112
    :cond_15
    const/4 v3, 0x0

    .line 113
    .local v3, "item":I
    :goto_16
    iget-object v4, p0, Lmiui/cust/MiuiCustUtils$ClassInfo;->mCs:[Ljava/lang/reflect/Constructor;

    array-length v4, v4

    if-ge v3, v4, :cond_99

    .line 114
    iget-object v4, p0, Lmiui/cust/MiuiCustUtils$ClassInfo;->mCs:[Ljava/lang/reflect/Constructor;

    aget-object v4, v4, v3

    .line 115
    .local v4, "c":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 116
    .local v5, "ptcs":[Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-nez v6, :cond_94

    array-length v6, v5

    array-length v7, p1

    if-ne v6, v7, :cond_94

    .line 117
    array-length v6, v5

    if-eqz v6, :cond_90

    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "i":I
    :goto_35
    array-length v7, p1

    if-ge v6, v7, :cond_8f

    .line 120
    aget-object v7, p1, v6

    if-nez v7, :cond_45

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 121
    goto :goto_8f

    .line 124
    :cond_45
    aget-object v7, p1, v6

    if-eqz v7, :cond_86

    .line 125
    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_64

    sget-object v7, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    aget-object v8, p1, v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    goto :goto_6a

    :cond_64
    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 126
    .local v7, "argCls":Ljava/lang/Class;
    :goto_6a
    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_7d

    sget-object v8, Lmiui/cust/MiuiCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    goto :goto_7f

    :cond_7d
    aget-object v8, v5, v6

    .line 127
    .local v8, "ptcCls":Ljava/lang/Class;
    :goto_7f
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_86

    .line 128
    goto :goto_8f

    .line 132
    .end local v7    # "argCls":Ljava/lang/Class;
    .end local v8    # "ptcCls":Ljava/lang/Class;
    :cond_86
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_8c

    .line 133
    move-object v2, v4

    .line 135
    :cond_8c
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 137
    .end local v6    # "i":I
    :cond_8f
    :goto_8f
    goto :goto_91

    .line 138
    :cond_90
    move-object v2, v4

    .line 141
    :goto_91
    if-eqz v2, :cond_94

    .line 142
    goto :goto_99

    .line 145
    :cond_94
    nop

    .end local v4    # "c":Ljava/lang/reflect/Constructor;
    .end local v5    # "ptcs":[Ljava/lang/Class;
    add-int/lit8 v3, v3, 0x1

    .line 146
    goto/16 :goto_16

    .line 147
    :cond_99
    :goto_99
    sget-object v4, Lmiui/cust/MiuiCustUtils;->mConstructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    nop

    .end local v3    # "item":I
    monitor-exit v0

    .line 150
    return-object v2

    .line 149
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "useConstructor":Ljava/lang/reflect/Constructor;
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_3 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method static blacklist getArgsType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ":-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "item":I
    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_41

    .line 91
    aget-object v3, p1, v2

    .line 92
    .local v3, "arg":Ljava/lang/Object;
    if-nez v3, :cond_24

    .line 93
    const-string v4, ":null"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 95
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .end local v3    # "arg":Ljava/lang/Object;
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 98
    .end local v2    # "item":I
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static blacklist getClassByName(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/String;)Lmiui/cust/MiuiCustUtils$ClassInfo;
    .registers 11
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "allSuffix"    # [Ljava/lang/String;

    .line 155
    const-class v0, Lmiui/cust/MiuiCustUtils;

    monitor-enter v0

    .line 156
    :try_start_3
    sget-object v1, Lmiui/cust/MiuiCustUtils;->mClassCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cust/MiuiCustUtils$ClassInfo;

    .line 157
    .local v1, "clsInfo":Lmiui/cust/MiuiCustUtils$ClassInfo;
    if-eqz v1, :cond_f

    .line 158
    monitor-exit v0

    return-object v1

    .line 161
    :cond_f
    if-eqz p0, :cond_da

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_bd

    const-string v2, "$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bd

    .line 164
    const-string v2, ".MiuiCust"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCustImpl obj, className invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3}, Lmiui/cust/MiuiCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    :cond_42
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    array-length v3, p2
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_f7

    if-ge v2, v3, :cond_9e

    .line 170
    :try_start_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v3, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 174
    .local v4, "dstClass":Ljava/lang/Class;
    new-instance v6, Lmiui/cust/MiuiCustUtils$ClassInfo;

    invoke-direct {v6, p0, v4}, Lmiui/cust/MiuiCustUtils$ClassInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    move-object v1, v6

    .line 175
    sget-object v6, Lmiui/cust/MiuiCustUtils;->mClassCache:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-boolean v6, Lmiui/cust/MiuiCustUtils;->CUST_VERSION:Z

    if-eqz v6, :cond_6f

    array-length v7, p2

    sub-int/2addr v7, v5

    if-eq v2, v7, :cond_75

    :cond_6f
    if-nez v6, :cond_99

    array-length v6, p2

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_99

    .line 177
    :cond_75
    const-string v5, "MiuiCust"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUST VERSION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lmiui/cust/MiuiCustUtils;->CUST_VERSION:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", use class = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_99} :catch_9a
    .catchall {:try_start_46 .. :try_end_99} :catchall_f7

    .line 179
    :cond_99
    goto :goto_9e

    .line 180
    .end local v3    # "str":Ljava/lang/StringBuilder;
    .end local v4    # "dstClass":Ljava/lang/Class;
    :catch_9a
    move-exception v3

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 184
    .end local v2    # "i":I
    :cond_9e
    :goto_9e
    if-nez v1, :cond_bb

    .line 185
    :try_start_a0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class / custClass not found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    invoke-static {v2, v3}, Lmiui/cust/MiuiCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :cond_bb
    monitor-exit v0

    return-object v1

    .line 189
    :cond_bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class / custClass not found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    invoke-static {v2, v3}, Lmiui/cust/MiuiCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    monitor-exit v0

    return-object v1

    .line 194
    :cond_da
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class / custClass not found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ClassNotFoundException;

    invoke-direct {v3}, Ljava/lang/ClassNotFoundException;-><init>()V

    invoke-static {v2, v3}, Lmiui/cust/MiuiCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    monitor-exit v0

    .line 196
    return-object v1

    .line 195
    .end local v1    # "clsInfo":Lmiui/cust/MiuiCustUtils$ClassInfo;
    :catchall_f7
    move-exception v1

    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_a0 .. :try_end_f9} :catchall_f7

    throw v1
.end method

.method public static blacklist getVersionRegion()Ljava/lang/String;
    .registers 1

    .line 200
    sget-object v0, Lmiui/cust/MiuiCustUtils;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist initRegionInfo()V
    .registers 5

    .line 208
    const-string v0, "ro.config.miui_optb"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "str1":Ljava/lang/String;
    const-string v2, "ro.miui.vendor"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "str2":Ljava/lang/String;
    const-string v3, "ro.miui.country"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "str3":Ljava/lang/String;
    const-string v3, "156"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 212
    const-string v3, "cn"

    sput-object v3, Lmiui/cust/MiuiCustUtils;->mRegion:Ljava/lang/String;

    goto :goto_6c

    .line 213
    :cond_21
    const-string v3, "376"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 214
    const-string v3, "il"

    sput-object v3, Lmiui/cust/MiuiCustUtils;->mRegion:Ljava/lang/String;

    goto :goto_6c

    .line 216
    :cond_2e
    const-string v3, "orange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "altice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    :cond_3e
    const-string v4, "all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    :cond_46
    const-string v4, "tef"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    const-string v4, "normal"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_6d

    .line 220
    :cond_57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const-string v3, "btob"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 221
    const-string v3, "fr"

    sput-object v3, Lmiui/cust/MiuiCustUtils;->mRegion:Ljava/lang/String;

    goto :goto_6c

    .line 223
    :cond_6a
    sput-object v1, Lmiui/cust/MiuiCustUtils;->mRegion:Ljava/lang/String;

    .line 226
    :goto_6c
    return-void

    .line 217
    :cond_6d
    :goto_6d
    const-string v3, "eu"

    sput-object v3, Lmiui/cust/MiuiCustUtils;->mRegion:Ljava/lang/String;

    .line 218
    return-void
.end method

.method static blacklist log_info(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 229
    return-void
.end method
