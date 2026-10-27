.class public Lcom/miui/whetstone/cert/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final blacklist LOG_TYPE_IP:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist switchData(I[B)V
    .registers 5
    .param p0, "tag"    # I
    .param p1, "data"    # [B

    .line 10
    if-eqz p1, :cond_1b

    .line 11
    packed-switch p0, :pswitch_data_1c

    goto :goto_1b

    .line 14
    :pswitch_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1b

    .line 15
    aget-byte v1, p1, v0

    .line 16
    .local v1, "temp":B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 17
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    .line 14
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 24
    .end local v0    # "i":I
    .end local v1    # "temp":B
    :cond_1b
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
