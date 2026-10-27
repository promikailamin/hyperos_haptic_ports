.class public final Landroid/hardware/usb/UsbOperationInternal;
.super Landroid/hardware/usb/IUsbOperationInternal$Stub;
.source "UsbOperationInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbOperationInternal$UsbOperationStatus;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UsbPortStatus"

.field public static final blacklist USB_OPERATION_ERROR_INTERNAL:I = 0x1

.field public static final blacklist USB_OPERATION_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final blacklist USB_OPERATION_ERROR_PORT_MISMATCH:I = 0x3

.field public static final blacklist USB_OPERATION_SUCCESS:I = 0x0

.field private static final blacklist USB_OPERATION_TIMEOUT_MSECS:I = 0x1388


# instance fields
.field private blacklist mAsynchronous:Z

.field private blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mId:Ljava/lang/String;

.field final blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mOperationComplete:Z

.field private final blacklist mOperationID:I

.field final blacklist mOperationWait:Ljava/util/concurrent/locks/Condition;

.field private blacklist mResult:I

.field private blacklist mStatus:I


# direct methods
.method public static synthetic blacklist $r8$lambda$sqqNA1WIsmY_xWHIksO1RwF0rm4(Landroid/hardware/usb/UsbOperationInternal;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbOperationInternal;->lambda$onOperationComplete$0()V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4

    .line 97
    invoke-direct {p0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    .line 48
    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    .line 98
    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    .line 99
    iput-object p2, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    .line 48
    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    .line 90
    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    .line 91
    iput-object p2, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Landroid/hardware/usb/UsbOperationInternal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 93
    iput-object p4, p0, Landroid/hardware/usb/UsbOperationInternal;->mConsumer:Ljava/util/function/Consumer;

    .line 94
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    .line 95
    return-void
.end method

.method private synthetic blacklist lambda$onOperationComplete$0()V
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mConsumer:Ljava/util/function/Consumer;

    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist getStatus()I
    .registers 2

    .line 165
    iget-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public blacklist onOperationComplete(I)V
    .registers 5

    .line 108
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    .line 111
    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    .line 112
    const-string p1, "UsbPortStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " opID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-boolean p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    if-eqz p1, :cond_63

    .line 114
    iget p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    packed-switch p1, :pswitch_data_76

    .line 128
    const/4 p1, 0x4

    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    goto :goto_58

    .line 125
    :pswitch_49
    const/4 p1, 0x3

    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 126
    goto :goto_58

    .line 122
    :pswitch_4d
    const/4 p1, 0x2

    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 123
    goto :goto_58

    .line 119
    :pswitch_51
    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 120
    goto :goto_58

    .line 116
    :pswitch_54
    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 117
    nop

    .line 130
    :goto_58
    iget-object p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/usb/UsbOperationInternal;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_68

    .line 132
    :cond_63
    iget-object p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_68
    .catchall {:try_start_6 .. :try_end_68} :catchall_6f

    .line 135
    :goto_68
    iget-object p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_6f
    move-exception p1

    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    throw p1

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method

.method public blacklist waitForOperationComplete()V
    .registers 10

    .line 143
    const-string v0, " opID:"

    const-string v1, "Port:"

    const-string v2, "UsbPortStatus"

    iget-object v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 146
    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    .line 149
    :cond_12
    iget-object v5, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v3, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 151
    iget-boolean v5, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-nez v5, :cond_2b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-ltz v5, :cond_12

    .line 152
    :cond_2b
    iget-boolean v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-nez v3, :cond_61

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operationComplete not received in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msecs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_61} :catch_69
    .catchall {:try_start_b .. :try_end_61} :catchall_67

    .line 160
    :cond_61
    :goto_61
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    goto :goto_91

    .line 160
    :catchall_67
    move-exception v0

    goto :goto_92

    .line 157
    :catch_69
    move-exception v3

    .line 158
    :try_start_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operationComplete interrupted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_6a .. :try_end_90} :catchall_67

    goto :goto_61

    .line 162
    :goto_91
    return-void

    .line 160
    :goto_92
    iget-object v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    throw v0
.end method
