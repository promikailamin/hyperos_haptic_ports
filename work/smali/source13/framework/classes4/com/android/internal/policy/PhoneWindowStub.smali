.class public interface abstract Lcom/android/internal/policy/PhoneWindowStub;
.super Ljava/lang/Object;
.source "PhoneWindowStub.java"


# static fields
.field public static final blacklist sInstance:Lcom/android/internal/policy/PhoneWindowStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/android/internal/policy/PhoneWindowStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindowStub;

    sput-object v0, Lcom/android/internal/policy/PhoneWindowStub;->sInstance:Lcom/android/internal/policy/PhoneWindowStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/policy/PhoneWindowStub;
    .registers 1

    .line 13
    sget-object v0, Lcom/android/internal/policy/PhoneWindowStub;->sInstance:Lcom/android/internal/policy/PhoneWindowStub;

    return-object v0
.end method


# virtual methods
.method public blacklist interceptMenuOnXLagerScreen(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isBlackNavigationBar(Landroid/content/Context;I)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "NavigationBarColor"    # I

    .line 26
    return p2
.end method

.method public abstract blacklist isSplitMode(Landroid/content/Context;)Z
.end method

.method public blacklist onNavigationBarColorChange(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2
    .param p1, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .line 17
    return-void
.end method
