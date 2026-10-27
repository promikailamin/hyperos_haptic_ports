.class public Landroid/filterfw/core/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FilterFactory"

.field private static greylist-max-o mClassLoaderGuard:Ljava/lang/Object;

.field private static greylist-max-o mCurrentClassLoader:Ljava/lang/ClassLoader;

.field private static greylist-max-o mLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o mLogVerbose:Z

.field private static greylist-max-o mSharedFactory:Landroid/filterfw/core/FilterFactory;


# instance fields
.field private greylist-max-o mPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    .line 49
    const-string v0, "FilterFactory"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    return-void
.end method

.method public static greylist-max-o addFilterLibrary(Ljava/lang/String;)V
    .registers 4

    .line 65
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v0, :cond_1c

    const-string v0, "FilterFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding filter library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1c
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_1f
    sget-object v1, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 68
    sget-boolean p0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz p0, :cond_32

    const-string p0, "FilterFactory"

    const-string v1, "Library already added"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_32
    monitor-exit v0

    return-void

    .line 71
    :cond_34
    sget-object v1, Landroid/filterfw/core/FilterFactory;->mLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Ldalvik/system/PathClassLoader;

    sget-object v2, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, p0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_44

    throw p0
.end method

.method public static greylist-max-o sharedFactory()Landroid/filterfw/core/FilterFactory;
    .registers 1

    .line 52
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    sput-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    .line 55
    :cond_b
    sget-object v0, Landroid/filterfw/core/FilterFactory;->mSharedFactory:Landroid/filterfw/core/FilterFactory;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addPackage(Ljava/lang/String;)V
    .registers 4

    .line 78
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1c
    iget-object v0, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public greylist-max-o createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .registers 6

    .line 115
    const-class v0, Landroid/filterfw/core/Filter;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 121
    nop

    .line 123
    const/4 v0, 0x1

    :try_start_a
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_15} :catch_46

    .line 127
    nop

    .line 130
    nop

    .line 132
    :try_start_17
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/Filter;
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    .line 135
    goto :goto_24

    .line 133
    :catchall_22
    move-exception p1

    const/4 p1, 0x0

    .line 137
    :goto_24
    if-eqz p1, :cond_27

    .line 141
    return-object p1

    .line 138
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not construct the filter \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :catch_46
    move-exception p2

    .line 125
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The filter class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' does not have a constructor of the form <init>(String name)!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 116
    :cond_66
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to allocate class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' which is not a subclass of Filter!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o createFilterByClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .registers 9

    .line 89
    sget-boolean v0, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v0, :cond_1c

    const-string v0, "FilterFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking up class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1c
    nop

    .line 93
    iget-object v0, p0, Landroid/filterfw/core/FilterFactory;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    :try_start_30
    sget-boolean v3, Landroid/filterfw/core/FilterFactory;->mLogVerbose:Z

    if-eqz v3, :cond_56

    const-string v3, "FilterFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_56
    sget-object v3, Landroid/filterfw/core/FilterFactory;->mClassLoaderGuard:Ljava/lang/Object;

    monitor-enter v3
    :try_end_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_59} :catch_7f

    .line 97
    :try_start_59
    sget-object v4, Landroid/filterfw/core/FilterFactory;->mCurrentClassLoader:Ljava/lang/ClassLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    monitor-exit v3

    .line 101
    nop

    .line 103
    if-eqz v1, :cond_7b

    .line 104
    goto :goto_81

    .line 106
    :cond_7b
    goto :goto_24

    .line 98
    :catchall_7c
    move-exception v2

    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_59 .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v2
    :try_end_7f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7e .. :try_end_7f} :catch_7f

    .line 99
    :catch_7f
    move-exception v2

    .line 100
    goto :goto_24

    .line 107
    :cond_81
    :goto_81
    if-eqz v1, :cond_88

    .line 110
    invoke-virtual {p0, v1, p2}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object p1

    return-object p1

    .line 108
    :cond_88
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown filter class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
