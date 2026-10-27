.class public Lcom/android/server/am/BaseErrorDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "BaseErrorDialog.java"


# static fields
.field private static final DISABLE_BUTTONS:I = 0x1

.field private static final ENABLE_BUTTONS:I

.field private static sMiuiAlertDialogThemeId:I

.field private static sUiContext:Landroid/content/Context;


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fputmConsuming(Lcom/android/server/am/BaseErrorDialog;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 39
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BaseErrorDialog;->sUiContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const-string v1, "AlertDialog.Theme.DayNight"

    const-string/jumbo v2, "style"

    const-string/jumbo v3, "miuix.stub"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/BaseErrorDialog;->sMiuiAlertDialogThemeId:I

    .line 43
    if-nez v0, :cond_23

    .line 44
    const v0, 0x10303ef

    sput v0, Lcom/android/server/am/BaseErrorDialog;->sMiuiAlertDialogThemeId:I

    .line 46
    :cond_23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    sget v0, Lcom/android/server/am/BaseErrorDialog;->sMiuiAlertDialogThemeId:I

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    .line 136
    new-instance v0, Lcom/android/server/am/BaseErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseErrorDialog$2;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 64
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Error Dialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    return-void
.end method

.method private setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 122
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 123
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_e

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    :cond_e
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 127
    if-eqz v0, :cond_1d

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    :cond_1d
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 131
    if-eqz v0, :cond_2c

    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :cond_2c
    return-void
.end method


# virtual methods
.method protected closeDialog()V
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mCancelable:Z

    if-eqz v0, :cond_8

    .line 152
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->cancel()V

    goto :goto_b

    .line 154
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 156
    :goto_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 113
    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    if-eqz v0, :cond_6

    .line 115
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_6
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 9

    .line 70
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    .line 71
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_34

    .line 74
    new-instance v0, Lcom/android/server/am/BaseErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseErrorDialog$1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 88
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 89
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_44

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 93
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 99
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    .line 100
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_32

    .line 102
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_10} :catch_11

    .line 107
    goto :goto_2f

    .line 103
    :catch_11
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterReceiver threw exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "BaseErrorDialog"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    :cond_32
    return-void
.end method
