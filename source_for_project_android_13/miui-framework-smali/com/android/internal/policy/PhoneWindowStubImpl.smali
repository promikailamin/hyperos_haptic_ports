.class public Lcom/android/internal/policy/PhoneWindowStubImpl;
.super Ljava/lang/Object;
.source "PhoneWindowStubImpl.java"

# interfaces
.implements Lcom/android/internal/policy/PhoneWindowStub;


# static fields
.field private static final blacklist BLACK_NAVIGATIONBAR_COLOR:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindowStubImpl;->BLACK_NAVIGATIONBAR_COLOR:Landroid/util/ArraySet;

    .line 21
    const-string v1, "com.miHoYo.Yuanshen/com.miHoYo.GetMobileInfo.MainActivity"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v1, "com.miHoYo.ys.mi/com.miHoYo.GetMobileInfo.MainActivity"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "com.hermes.h1game.mi/com.hermes.h1game.MainActivity"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist interceptMenuOnXLagerScreen(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isBlackNavigationBar(Landroid/content/Context;I)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationBarColor"    # I

    .line 56
    if-eqz p1, :cond_28

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_28

    .line 57
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_28

    sget-object v1, Lcom/android/internal/policy/PhoneWindowStubImpl;->BLACK_NAVIGATIONBAR_COLOR:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 59
    const/high16 v1, -0x1000000

    return v1

    .line 62
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_28
    return p2
.end method

.method public blacklist isSplitMode(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 46
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_18
    return v1
.end method

.method public blacklist onNavigationBarColorChange(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 5
    .param p1, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .line 28
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v0

    .line 29
    .local v0, "navigationBarColor":I
    const/high16 v1, 0x100000

    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_22

    .line 31
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow;->addExtraFlags(I)V

    goto :goto_22

    .line 34
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_22

    .line 35
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow;->clearExtraFlags(I)V

    .line 38
    :cond_22
    :goto_22
    return-void
.end method
