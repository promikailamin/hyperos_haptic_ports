.class public final Landroid/os/MiuiBinderTransaction$IMiuiHeartRate;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IMiuiHeartRate"
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.app.HeartRate"

.field public static final blacklist HEARTBEAT_RATE_DATA:I = 0xfffffc

.field public static final blacklist HEARTBEAT_RATE_REGISTER:I = 0xfffffe

.field public static final blacklist HEARTBEAT_RATE_SEND_CMD:I = 0xffffff

.field public static final blacklist HEARTBEAT_RATE_UNREGISTER:I = 0xfffffd


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 81
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IMiuiHeartRate;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
