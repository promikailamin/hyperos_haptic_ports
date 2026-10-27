.class public Landroid/widget/EditTextStubImpl;
.super Ljava/lang/Object;
.source "EditTextStubImpl.java"

# interfaces
.implements Landroid/widget/EditTextStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mMiuiHandwritingEditTextHelper:Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/EditTextStubImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Landroid/widget/EditTextStubImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/EditTextStubImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist afterPerformAccessibilityActionClick(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 46
    iget-object v0, p0, Landroid/widget/EditTextStubImpl;->mMiuiHandwritingEditTextHelper:Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;

    invoke-virtual {v0, p1}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->afterPerformAccessibilityActionClick(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public blacklist init(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;

    .line 38
    new-instance v0, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/EditTextStubImpl;->mMiuiHandwritingEditTextHelper:Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;

    .line 39
    return-void
.end method

.method public blacklist needInterceptPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 42
    iget-object v0, p0, Landroid/widget/EditTextStubImpl;->mMiuiHandwritingEditTextHelper:Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditTextStubImpl$MiuiHandwritingEditTextHelper;->needInterceptPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
