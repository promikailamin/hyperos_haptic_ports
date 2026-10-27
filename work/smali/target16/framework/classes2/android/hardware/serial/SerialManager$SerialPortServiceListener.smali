.class Landroid/hardware/serial/SerialManager$SerialPortServiceListener;
.super Landroid/hardware/serial/ISerialPortListener$Stub;
.source "SerialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/serial/SerialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerialPortServiceListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/serial/SerialManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/serial/SerialManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-direct {p0}, Landroid/hardware/serial/ISerialPortListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/serial/SerialManager;Landroid/hardware/serial/SerialManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;-><init>(Landroid/hardware/serial/SerialManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSerialPortConnected$0(Landroid/hardware/serial/SerialPortListener;Landroid/hardware/serial/SerialPort;)V
    .registers 2

    .line 139
    invoke-interface {p0, p1}, Landroid/hardware/serial/SerialPortListener;->onSerialPortConnected(Landroid/hardware/serial/SerialPort;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSerialPortDisconnected$1(Landroid/hardware/serial/SerialPortListener;Landroid/hardware/serial/SerialPort;)V
    .registers 2

    .line 155
    invoke-interface {p0, p1}, Landroid/hardware/serial/SerialPortListener;->onSerialPortDisconnected(Landroid/hardware/serial/SerialPort;)V

    return-void
.end method


# virtual methods
.method public blacklist onSerialPortConnected(Landroid/hardware/serial/SerialPortInfo;)V
    .registers 7

    .line 133
    new-instance v0, Landroid/hardware/serial/SerialPort;

    iget-object v1, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {v1}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmContext(Landroid/hardware/serial/SerialManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {v2}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmService(Landroid/hardware/serial/SerialManager;)Landroid/hardware/serial/ISerialManager;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Landroid/hardware/serial/SerialPort;-><init>(Landroid/content/Context;Landroid/hardware/serial/SerialPortInfo;Landroid/hardware/serial/ISerialManager;)V

    .line 134
    iget-object p1, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {p1}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmLock(Landroid/hardware/serial/SerialManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 135
    :try_start_18
    iget-object v1, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {v1}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmListeners(Landroid/hardware/serial/SerialManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/serial/SerialPortListener;
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_52

    .line 139
    :try_start_3e
    new-instance v4, Landroid/hardware/serial/SerialManager$SerialPortServiceListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v0}, Landroid/hardware/serial/SerialManager$SerialPortServiceListener$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/serial/SerialPortListener;Landroid/hardware/serial/SerialPort;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_46} :catch_47
    .catchall {:try_start_3e .. :try_end_46} :catchall_52

    .line 142
    goto :goto_4f

    .line 140
    :catch_47
    move-exception v2

    .line 141
    :try_start_48
    const-string v3, "SerialManager"

    const-string v4, "Exception in listener"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_4f
    goto :goto_26

    .line 144
    :cond_50
    monitor-exit p1

    .line 145
    return-void

    .line 144
    :catchall_52
    move-exception v0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public blacklist onSerialPortDisconnected(Landroid/hardware/serial/SerialPortInfo;)V
    .registers 7

    .line 149
    new-instance v0, Landroid/hardware/serial/SerialPort;

    iget-object v1, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {v1}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmContext(Landroid/hardware/serial/SerialManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {v2}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmService(Landroid/hardware/serial/SerialManager;)Landroid/hardware/serial/ISerialManager;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Landroid/hardware/serial/SerialPort;-><init>(Landroid/content/Context;Landroid/hardware/serial/SerialPortInfo;Landroid/hardware/serial/ISerialManager;)V

    .line 150
    iget-object p1, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {p1}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmLock(Landroid/hardware/serial/SerialManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 151
    :try_start_18
    iget-object v1, p0, Landroid/hardware/serial/SerialManager$SerialPortServiceListener;->this$0:Landroid/hardware/serial/SerialManager;

    invoke-static {v1}, Landroid/hardware/serial/SerialManager;->-$$Nest$fgetmListeners(Landroid/hardware/serial/SerialManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/serial/SerialPortListener;
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_52

    .line 155
    :try_start_3e
    new-instance v4, Landroid/hardware/serial/SerialManager$SerialPortServiceListener$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v0}, Landroid/hardware/serial/SerialManager$SerialPortServiceListener$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/serial/SerialPortListener;Landroid/hardware/serial/SerialPort;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_46} :catch_47
    .catchall {:try_start_3e .. :try_end_46} :catchall_52

    .line 158
    goto :goto_4f

    .line 156
    :catch_47
    move-exception v2

    .line 157
    :try_start_48
    const-string v3, "SerialManager"

    const-string v4, "Exception in listener"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_4f
    goto :goto_26

    .line 160
    :cond_50
    monitor-exit p1

    .line 161
    return-void

    .line 160
    :catchall_52
    move-exception v0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v0
.end method
