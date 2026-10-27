.class public Lcom/android/server/policy/SideFpsEventHandler;
.super Ljava/lang/Object;
.source "SideFpsEventHandler.java"


# static fields
.field private static final DEBOUNCE_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private mBiometricState:I

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private final mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mDialogSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/app/AlertDialog$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSideFpsEventHandlerReady(Lcom/android/server/policy/SideFpsEventHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/android/server/policy/SideFpsEventHandler;Landroid/app/Dialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "powerManager"    # Landroid/os/PowerManager;

    .line 73
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "powerManager"    # Landroid/os/PowerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/os/PowerManager;",
            "Ljava/util/function/Supplier<",
            "Landroid/app/AlertDialog$Builder;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p4, "dialogSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/app/AlertDialog$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 79
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    iput-object p4, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogSupplier:Ljava/util/function/Supplier;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    .line 84
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$showConfirmDialog$3(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V
    .registers 7
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "eventTime"    # J
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 147
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 153
    return-void
.end method

.method static synthetic lambda$showConfirmDialog$4(Landroid/content/DialogInterface;I)V
    .registers 2
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 154
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static showConfirmDialog(Landroid/app/AlertDialog$Builder;Landroid/os/PowerManager;JILandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .registers 14
    .param p0, "dialogBuilder"    # Landroid/app/AlertDialog$Builder;
    .param p1, "powerManager"    # Landroid/os/PowerManager;
    .param p2, "eventTime"    # J
    .param p4, "biometricState"    # I
    .param p5, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 132
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    goto :goto_6

    :cond_5
    move v1, v0

    .line 133
    .local v1, "enrolling":Z
    :goto_6
    if-eqz v1, :cond_c

    const v2, 0x104043e

    goto :goto_f

    .line 134
    :cond_c
    const v2, 0x104043a

    :goto_f
    nop

    .line 135
    .local v2, "title":I
    if-eqz v1, :cond_16

    const v3, 0x104043b

    goto :goto_19

    .line 136
    :cond_16
    const v3, 0x1040437

    :goto_19
    nop

    .line 137
    .local v3, "message":I
    if-eqz v1, :cond_20

    const v4, 0x104043d

    goto :goto_23

    .line 138
    :cond_20
    const v4, 0x1040439

    :goto_23
    nop

    .line 139
    .local v4, "positiveText":I
    if-eqz v1, :cond_2a

    const v5, 0x104043c

    goto :goto_2d

    .line 140
    :cond_2a
    const v5, 0x1040438

    :goto_2d
    nop

    .line 142
    .local v5, "negativeText":I
    nop

    .line 143
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 144
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;

    invoke-direct {v7, p1, p2, p3}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;-><init>(Landroid/os/PowerManager;J)V

    .line 145
    invoke-virtual {v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 154
    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 155
    invoke-virtual {v6, p5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 156
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 158
    .local v0, "confirmScreenOffDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e1

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 162
    return-object v0
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-server-policy-SideFpsEventHandler(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_7

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    .line 68
    :cond_7
    return-void
.end method

.method synthetic lambda$onSinglePressDetected$2$com-android-server-policy-SideFpsEventHandler(J)V
    .registers 10
    .param p1, "eventTime"    # J

    .line 115
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    iget v5, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    iget-object v6, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-wide v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/policy/SideFpsEventHandler;->showConfirmDialog(Landroid/app/AlertDialog$Builder;Landroid/os/PowerManager;JILandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    .line 120
    return-void
.end method

.method public onFingerprintSensorReady()V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 173
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 174
    return-void

    .line 177
    :cond_f
    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 179
    .local v1, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    new-instance v2, Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 214
    return-void
.end method

.method public onSinglePressDetected(J)Z
    .registers 5
    .param p1, "eventTime"    # J

    .line 107
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 108
    return v1

    .line 111
    :cond_a
    iget v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    packed-switch v0, :pswitch_data_1c

    .line 123
    :pswitch_f
    return v1

    .line 114
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    const/4 v0, 0x1

    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
