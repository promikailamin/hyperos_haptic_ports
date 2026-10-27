.class public Lcom/android/server/wm/PageSizeMismatchDialog;
.super Lcom/android/server/wm/AppWarnings$BaseDialog;
.source "PageSizeMismatchDialog.java"


# direct methods
.method public static synthetic $r8$lambda$fUlZjXwRjA-OJayvWA83KQUpQuo(Lcom/android/server/wm/PageSizeMismatchDialog;Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/PageSizeMismatchDialog;->lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .registers 6

    .line 49
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PageSizeMismatchDialog;Lcom/android/server/wm/AppWarnings;)V

    const p1, 0x104074a

    .line 54
    invoke-virtual {p3, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 p3, 0x0

    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/16 p2, 0x3f

    .line 60
    invoke-static {p5, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104074b

    .line 61
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 64
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 55
    iget p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    const/16 p3, 0x10

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, p3, v0}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(ILjava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public show()V
    .registers 2

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 75
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
