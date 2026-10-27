.class public Landroid/net/ipmemorystore/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final ERROR_DATABASE_CANNOT_BE_OPENED:I = -0x3

.field public static final ERROR_GENERIC:I = -0x1

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_STORAGE:I = -0x4

.field public static final ERROR_UNKNOWN:I = -0x5

.field public static final SUCCESS:I


# instance fields
.field public final resultCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/net/ipmemorystore/StatusParcelable;)V
    .registers 3
    .param p1, "parcelable"    # Landroid/net/ipmemorystore/StatusParcelable;

    .line 45
    iget v0, p1, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    invoke-direct {p0, v0}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    .line 57
    iget v0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/StatusParcelable;
    .registers 3

    .line 51
    new-instance v0, Landroid/net/ipmemorystore/StatusParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/StatusParcelable;-><init>()V

    .line 52
    .local v0, "parcelable":Landroid/net/ipmemorystore/StatusParcelable;
    iget v1, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    iput v1, v0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    .line 53
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 63
    iget v0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    packed-switch v0, :pswitch_data_18

    .line 71
    const-string v0, "Unknown value ?!"

    return-object v0

    .line 64
    :pswitch_8
    const-string v0, "SUCCESS"

    return-object v0

    .line 65
    :pswitch_b
    const-string v0, "GENERIC ERROR"

    return-object v0

    .line 66
    :pswitch_e
    const-string v0, "ILLEGAL ARGUMENT"

    return-object v0

    .line 67
    :pswitch_11
    const-string v0, "DATABASE CANNOT BE OPENED"

    return-object v0

    .line 70
    :pswitch_14
    const-string v0, "DATABASE STORAGE ERROR"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch -0x4
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
