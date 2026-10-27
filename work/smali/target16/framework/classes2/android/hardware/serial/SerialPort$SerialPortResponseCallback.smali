.class Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;
.super Landroid/hardware/serial/ISerialPortResponseCallback$Stub;
.source "SerialPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/serial/SerialPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerialPortResponseCallback"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/hardware/serial/SerialPortResponse;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/hardware/serial/SerialPort;


# direct methods
.method public static synthetic blacklist $r8$lambda$39ZSdbXNrudYJZm6YEllFC5oRsA(Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->lambda$onError$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CTk3QycWJk7v68dRynyPuay6t14(Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->lambda$onResult$0(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/serial/SerialPort;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/hardware/serial/SerialPortResponse;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->this$0:Landroid/hardware/serial/SerialPort;

    invoke-direct {p0}, Landroid/hardware/serial/ISerialPortResponseCallback$Stub;-><init>()V

    .line 163
    iput-object p2, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 164
    iput-object p3, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->mReceiver:Landroid/os/OutcomeReceiver;

    .line 165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/serial/SerialPort;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/hardware/serial/SerialPort-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;-><init>(Landroid/hardware/serial/SerialPort;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private static blacklist getException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 5

    .line 180
    packed-switch p0, :pswitch_data_3a

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", message="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_38

    .line 183
    :pswitch_27
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_38

    .line 182
    :pswitch_2d
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_38

    .line 181
    :pswitch_33
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    :goto_38
    return-object p0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2d
        :pswitch_27
    .end packed-switch
.end method

.method private synthetic blacklist lambda$onError$1(ILjava/lang/String;)V
    .registers 4

    .line 175
    iget-object v0, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->mReceiver:Landroid/os/OutcomeReceiver;

    invoke-static {p1, p2}, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->getException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onResult$0(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 169
    iget-object v0, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->mReceiver:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/hardware/serial/SerialPortResponse;

    iget-object v2, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->this$0:Landroid/hardware/serial/SerialPort;

    invoke-direct {v1, v2, p1}, Landroid/hardware/serial/SerialPortResponse;-><init>(Landroid/hardware/serial/SerialPort;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(ILjava/lang/String;)V
    .registers 5

    .line 175
    iget-object v0, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public blacklist onResult(Landroid/hardware/serial/SerialPortInfo;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 169
    iget-object p1, p0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method
