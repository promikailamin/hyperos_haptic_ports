.class final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppNotRespondingDialog$Data;
    }
.end annotation


# static fields
.field public static final ALREADY_SHOWING:I = -0x2

.field public static final CANT_SHOW:I = -0x1

.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStub:Lcom/android/server/am/AppNotRespondingDialogStub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmData(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/AppNotRespondingDialog$Data;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 21
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 57
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct {v6, v8}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/android/server/am/AppNotRespondingDialogStub;->newInstance()Lcom/android/server/am/AppNotRespondingDialogStub;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/am/AppNotRespondingDialog;->mStub:Lcom/android/server/am/AppNotRespondingDialogStub;

    .line 153
    new-instance v1, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v1, v6}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v1, v6, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 59
    move-object/from16 v9, p1

    iput-object v9, v6, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 60
    iget-object v10, v7, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object v10, v6, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 61
    iput-object v7, v6, Lcom/android/server/am/AppNotRespondingDialog;->mData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 64
    .local v11, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 67
    iget-object v3, v7, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_37

    .line 68
    iget-object v3, v7, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_38

    .line 69
    :cond_37
    const/4 v3, 0x0

    :goto_38
    nop

    .line 70
    .local v3, "name1":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 71
    .local v4, "name2":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/PackageList;->size()I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_65

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_65

    .line 73
    if-eqz v3, :cond_5b

    .line 74
    const v5, 0x1040147

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .local v5, "resid":I
    goto :goto_78

    .line 76
    .end local v5    # "resid":I
    :cond_5b
    move-object v3, v4

    .line 77
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    const v5, 0x1040149

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .restart local v5    # "resid":I
    goto :goto_78

    .line 81
    .end local v5    # "resid":I
    :cond_65
    if-eqz v3, :cond_70

    .line 82
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 83
    const v5, 0x1040148

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .restart local v5    # "resid":I
    goto :goto_78

    .line 85
    .end local v5    # "resid":I
    :cond_70
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 86
    const v5, 0x104014a

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    .line 90
    .end local v3    # "name1":Ljava/lang/CharSequence;
    .end local v4    # "name2":Ljava/lang/CharSequence;
    .local v13, "name1":Ljava/lang/CharSequence;
    .local v14, "name2":Ljava/lang/CharSequence;
    .local v15, "resid":I
    :goto_78
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    .line 92
    .local v5, "bidi":Landroid/text/BidiFormatter;
    const/4 v3, 0x2

    if-eqz v14, :cond_9a

    .line 93
    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v12

    invoke-virtual {v11, v15, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_aa

    .line 94
    :cond_9a
    new-array v3, v12, [Ljava/lang/Object;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v11, v15, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 92
    :goto_aa
    invoke-virtual {v6, v3}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_b6

    move v2, v12

    .line 97
    :cond_b6
    invoke-virtual {v1, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v12, 0x3

    .line 98
    invoke-virtual {v1, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v16, v5

    .end local v5    # "bidi":Landroid/text/BidiFormatter;
    .local v16, "bidi":Landroid/text/BidiFormatter;
    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppNotRespondingDialogStub;->onInit(Lcom/android/server/am/AppNotRespondingDialog;ZLandroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V

    .line 101
    iget-boolean v0, v7, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    if-eqz v0, :cond_d9

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 104
    :cond_d9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 105
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application Not Responding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const/16 v1, 0x110

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected closeDialog()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    :pswitch_7
    goto :goto_29

    .line 146
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    goto :goto_29

    .line 140
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    goto :goto_29

    .line 143
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    nop

    .line 151
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x10201d3
        :pswitch_1e
        :pswitch_7
        :pswitch_13
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 113
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mStub:Lcom/android/server/am/AppNotRespondingDialogStub;

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppNotRespondingDialogStub;->onCreate(Lcom/android/server/am/AppNotRespondingDialog;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 116
    return-void

    .line 119
    :cond_c
    const v0, 0x102002b

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 120
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090037

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    const v2, 0x10201d5

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    .local v2, "report":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v4, v5

    :goto_3d
    move v3, v4

    .line 127
    .local v3, "hasReceiver":Z
    if-eqz v3, :cond_42

    move v4, v5

    goto :goto_44

    :cond_42
    const/16 v4, 0x8

    :goto_44
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    const v4, 0x10201d3

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 129
    .local v4, "close":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v6, 0x10201d7

    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 131
    .local v6, "wait":Landroid/widget/TextView;
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v7, 0x102028a

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-void
.end method
