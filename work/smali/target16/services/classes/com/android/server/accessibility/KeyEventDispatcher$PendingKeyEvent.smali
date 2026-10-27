.class public final Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# instance fields
.field public event:Landroid/view/KeyEvent;

.field public handled:Z

.field public policyFlags:I

.field public referenceCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/KeyEventDispatcher-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>()V

    return-void
.end method
