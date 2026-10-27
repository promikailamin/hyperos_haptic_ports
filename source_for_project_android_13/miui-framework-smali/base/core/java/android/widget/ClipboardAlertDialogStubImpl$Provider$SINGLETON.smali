.class public final Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ClipboardAlertDialogStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;

    invoke-direct {v0}, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;-><init>()V

    sput-object v0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider$SINGLETON;->INSTANCE:Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
