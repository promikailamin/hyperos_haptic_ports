.class public Lcom/miui/autoui/policy/AutoUIPolicyFactory;
.super Ljava/lang/Object;
.source "AutoUIPolicyFactory.java"


# static fields
.field private static final blacklist DEFAULT_POLICY:Lcom/miui/autoui/policy/api/IAutoUIPolicy;

.field public static final blacklist MIUI_AUTO_DPI_POLICY:I = 0x3

.field public static final blacklist MIUI_AUTO_UI_ACTIVITY_POLICY:I = 0x1

.field private static final blacklist MIUI_AUTO_UI_PAD_ACTIVITY_POLICY:I = 0x5

.field private static final blacklist MIUI_AUTO_UI_PAD_TAB_POLICY:I = 0x4

.field private static final blacklist MIUI_AUTO_UI_PAD_VIEW_POLICY:I = 0x6

.field public static final blacklist MIUI_AUTO_UI_VIEW_POLICY:I = 0x2

.field private static blacklist sPolicyArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/autoui/policy/api/IAutoUIPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;

    invoke-direct {v0}, Lcom/miui/autoui/policy/def/DefaultAutoUIPolicy;-><init>()V

    sput-object v0, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->DEFAULT_POLICY:Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->sPolicyArray:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static blacklist getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 32
    if-nez p0, :cond_5

    .line 33
    sget-object v0, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->DEFAULT_POLICY:Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    return-object v0

    .line 35
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 36
    .local v0, "windowTitle":Ljava/lang/CharSequence;
    if-nez v0, :cond_e

    .line 37
    sget-object v1, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->DEFAULT_POLICY:Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    return-object v1

    .line 40
    :cond_e
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autoui/AutoPolicyUtils;->getActivityPolicy(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "policyType":I
    invoke-static {v1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicyByType(I)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getPolicyByType(I)Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    .registers 3
    .param p0, "type"    # I

    .line 66
    const/4 v0, 0x1

    if-ge p0, v0, :cond_6

    .line 67
    sget-object v0, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->DEFAULT_POLICY:Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    return-object v0

    .line 69
    :cond_6
    sget-object v0, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->sPolicyArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    .line 70
    .local v0, "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    if-eqz v0, :cond_11

    .line 71
    return-object v0

    .line 73
    :cond_11
    invoke-static {p0}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->registerPolicy(I)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist registerPolicy(I)Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    .registers 3
    .param p0, "type"    # I

    .line 46
    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    .line 47
    new-instance v0, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;

    invoke-direct {v0}, Lcom/miui/autoui/policy/activity/ActivityAutoUIPolicy;-><init>()V

    .local v0, "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    goto :goto_35

    .line 48
    .end local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :cond_9
    const/4 v0, 0x2

    if-ne p0, v0, :cond_12

    .line 49
    new-instance v0, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;

    invoke-direct {v0}, Lcom/miui/autoui/policy/view/ViewAutoUIPolicy;-><init>()V

    .restart local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    goto :goto_35

    .line 50
    .end local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :cond_12
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1b

    .line 51
    new-instance v0, Lcom/miui/autoui/policy/autodpi/AutoDpiPolicy;

    invoke-direct {v0}, Lcom/miui/autoui/policy/autodpi/AutoDpiPolicy;-><init>()V

    .restart local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    goto :goto_35

    .line 52
    .end local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :cond_1b
    const/4 v0, 0x4

    if-ne p0, v0, :cond_24

    .line 53
    new-instance v0, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;

    invoke-direct {v0}, Lcom/miui/autoui/policy/padtab/PadTabAutoUIPolicy;-><init>()V

    .restart local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    goto :goto_35

    .line 54
    .end local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :cond_24
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2d

    .line 55
    new-instance v0, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;

    invoke-direct {v0}, Lcom/miui/autoui/policy/padactivity/PadActivityAutoUIPolicy;-><init>()V

    .restart local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    goto :goto_35

    .line 56
    .end local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :cond_2d
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3b

    .line 57
    new-instance v0, Lcom/miui/autoui/policy/padview/PadViewAutoUIPolicy;

    invoke-direct {v0}, Lcom/miui/autoui/policy/padview/PadViewAutoUIPolicy;-><init>()V

    .line 61
    .restart local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :goto_35
    sget-object v1, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->sPolicyArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    return-object v0

    .line 59
    .end local v0    # "policy":Lcom/miui/autoui/policy/api/IAutoUIPolicy;
    :cond_3b
    sget-object v0, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->DEFAULT_POLICY:Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    return-object v0
.end method
