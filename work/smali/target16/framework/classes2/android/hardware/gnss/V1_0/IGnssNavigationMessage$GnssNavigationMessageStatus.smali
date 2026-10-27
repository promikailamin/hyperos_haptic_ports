.class public final Landroid/hardware/gnss/V1_0/IGnssNavigationMessage$GnssNavigationMessageStatus;
.super Ljava/lang/Object;
.source "IGnssNavigationMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssNavigationMessageStatus"
.end annotation


# static fields
.field public static final blacklist ERROR_ALREADY_INIT:I = -0x64

.field public static final blacklist ERROR_GENERIC:I = -0x65

.field public static final blacklist SUCCESS:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    nop

    .line 110
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    and-int/lit8 v1, p0, -0x64

    const/16 v2, -0x64

    if-ne v1, v2, :cond_17

    .line 112
    const-string v1, "ERROR_ALREADY_INIT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_18

    .line 111
    :cond_17
    const/4 v2, 0x0

    .line 115
    :goto_18
    and-int/lit8 v1, p0, -0x65

    const/16 v3, -0x65

    if-ne v1, v3, :cond_25

    .line 116
    const-string v1, "ERROR_GENERIC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v2, v2, -0x65

    .line 119
    :cond_25
    if-eq p0, v2, :cond_43

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_43
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 95
    if-nez p0, :cond_5

    .line 96
    const-string p0, "SUCCESS"

    return-object p0

    .line 98
    :cond_5
    const/16 v0, -0x64

    if-ne p0, v0, :cond_c

    .line 99
    const-string p0, "ERROR_ALREADY_INIT"

    return-object p0

    .line 101
    :cond_c
    const/16 v0, -0x65

    if-ne p0, v0, :cond_13

    .line 102
    const-string p0, "ERROR_GENERIC"

    return-object p0

    .line 104
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
