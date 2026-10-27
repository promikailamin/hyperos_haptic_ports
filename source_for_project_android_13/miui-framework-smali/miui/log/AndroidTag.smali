.class public final Lmiui/log/AndroidTag;
.super Ljava/lang/Object;
.source "AndroidTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# static fields
.field static final blacklist BOOTCLASSLOADER:Ljava/lang/ClassLoader;


# instance fields
.field public final blacklist className:Ljava/lang/String;

.field private blacklist clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist clazzLoaded:Z

.field public final blacklist defaultOn:Z

.field public final blacklist fieldFullPath:Ljava/lang/String;

.field public final blacklist fieldName:Ljava/lang/String;

.field private blacklist isTagOn:Z

.field private blacklist onNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 38
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    .line 41
    invoke-static {p2, p3}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    .line 43
    iput-boolean p4, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 45
    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    .line 46
    iput-object p1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 5
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 31
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method static blacklist buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 27
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadClass()V
    .registers 3

    .line 86
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    if-nez v0, :cond_15

    .line 87
    iget-object v0, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    sget-object v1, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    .line 90
    :cond_15
    return-void
.end method


# virtual methods
.method public blacklist isOn()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized blacklist switchOff()V
    .registers 4

    monitor-enter p0

    .line 70
    :try_start_1
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    .line 71
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 72
    if-nez v0, :cond_1e

    .line 73
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 74
    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_31

    .line 75
    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    .line 77
    .end local p0    # "this":Lmiui/log/AndroidTag;
    :cond_1e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 79
    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_31

    .line 80
    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 83
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 69
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist switchOn()V
    .registers 4

    monitor-enter p0

    .line 54
    :try_start_1
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    .line 55
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 56
    if-nez v0, :cond_1e

    .line 57
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 58
    iget-object v1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_2f

    .line 59
    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f

    .line 61
    .end local p0    # "this":Lmiui/log/AndroidTag;
    :cond_1e
    if-ne v0, v1, :cond_2f

    .line 62
    iput-boolean v1, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 63
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_2f

    .line 64
    iget-object v2, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 67
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    .line 53
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method
