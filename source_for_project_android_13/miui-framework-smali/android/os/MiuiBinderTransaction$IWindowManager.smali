.class public final Landroid/os/MiuiBinderTransaction$IWindowManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IWindowManager"
.end annotation


# static fields
.field public static final blacklist TRANSACT_ID_SET_SPLITTABLE:I = 0xfffffd

.field public static final blacklist TRANSACT_ID_SHOW_FLOAT_WINDOW:I = 0xfffc16

.field public static final blacklist TRANSACT_ID_SIMULATE_SLIDE_EVENT:I = 0xfffffe

.field public static final blacklist TRANSACT_ID_SWITCH_RESOLUTION:I = 0xff


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 22
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IWindowManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
