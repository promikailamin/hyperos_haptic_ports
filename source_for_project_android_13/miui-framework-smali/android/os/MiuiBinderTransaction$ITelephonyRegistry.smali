.class public final Landroid/os/MiuiBinderTransaction$ITelephonyRegistry;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ITelephonyRegistry"
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field public static final blacklist TRANSACT_ID_GET_MIUI_TELEPHONY:I = 0xfffffe


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 29
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$ITelephonyRegistry;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
