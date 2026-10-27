.class public Lcom/android/server/clipboard/ClipboardServiceStub;
.super Ljava/lang/Object;
.source "ClipboardServiceStub.java"


# static fields
.field public static final ALLOW:I = 0x0

.field public static final EMPTY:I = 0x1

.field public static final WAIT:I = 0x3


# instance fields
.field public EMPTY_CLIP:Landroid/content/ClipData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardServiceStub;->EMPTY_CLIP:Landroid/content/ClipData;

    return-void
.end method

.method public static get()Lcom/android/server/clipboard/ClipboardServiceStub;
    .registers 1

    .line 22
    const-class v0, Lcom/android/server/clipboard/ClipboardServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardServiceStub;

    return-object v0
.end method


# virtual methods
.method public clipboardAccessResult(Landroid/content/ClipData;Ljava/lang/String;IIIZ)I
    .registers 8
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "callerUserId"    # I
    .param p5, "primaryClipUid"    # I
    .param p6, "userCall"    # Z

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getClipboardClickRuleData()Ljava/util/Map;
    .registers 2

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStashClipboardData()Landroid/content/ClipData;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOps"    # Landroid/app/AppOpsManager;

    .line 26
    return-void
.end method

.method public isAuthorizedByClipboard(Landroid/content/ClipData;Landroid/content/pm/ProviderInfo;)Z
    .registers 4
    .param p1, "primaryClip"    # Landroid/content/ClipData;
    .param p2, "providerInfo"    # Landroid/content/pm/ProviderInfo;

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isUidFocused(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public modifyClipDataIfNeed(Ljava/lang/String;Landroid/content/ClipData;)Landroid/content/ClipData;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "clipData"    # Landroid/content/ClipData;

    .line 56
    return-object p2
.end method

.method public updateClipboardRuleData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ClipboardRuleInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "ruleInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ClipboardRuleInfo;>;"
    return-void
.end method

.method public waitUserChoice(Ljava/lang/String;I)Landroid/content/ClipData;
    .registers 4
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .line 33
    const-string v0, ""

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method
