.class public final Landroid/app/time/UnixEpochTime;
.super Ljava/lang/Object;
.source "UnixEpochTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/UnixEpochTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mElapsedRealtimeMillis:J

.field private final blacklist mUnixEpochTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/app/time/UnixEpochTime$1;

    invoke-direct {v0}, Landroid/app/time/UnixEpochTime$1;-><init>()V

    sput-object v0, Landroid/app/time/UnixEpochTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    .line 51
    iput-wide p3, p0, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    .line 52
    return-void
.end method

.method public static blacklist elapsedRealtimeDifference(Landroid/app/time/UnixEpochTime;Landroid/app/time/UnixEpochTime;)J
    .registers 4

    .line 176
    iget-wide v0, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    iget-wide p0, p1, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/UnixEpochTime;
    .registers 5

    .line 57
    nop

    .line 58
    const/4 v0, 0x0

    move-object v1, v0

    .line 60
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_80

    :cond_10
    goto :goto_25

    :sswitch_11
    const-string v3, "--unix_epoch_time"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_26

    :sswitch_1b
    const-string v3, "--elapsed_realtime"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_26

    :goto_25
    const/4 v3, -0x1

    :goto_26
    packed-switch v3, :pswitch_data_8a

    .line 71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :pswitch_42
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 68
    goto :goto_5c

    .line 63
    :pswitch_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 64
    nop

    .line 73
    :goto_5c
    goto :goto_3

    .line 76
    :cond_5d
    if-eqz v0, :cond_77

    .line 79
    if-eqz v1, :cond_6f

    .line 82
    new-instance p0, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    return-object p0

    .line 80
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No unixEpochTimeMillis specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No elapsedRealtimeMillis specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_80
    .sparse-switch
        0x2e13e6e -> :sswitch_1b
        0x18745a3a -> :sswitch_11
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_42
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3

    .line 87
    const-string v0, "UnixEpochTime options:\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v0, "  --elapsed_realtime <elapsed realtime millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v0, "  --unix_epoch_time <Unix epoch time millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist at(J)Landroid/app/time/UnixEpochTime;
    .registers 7

    .line 164
    iget-wide v0, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    add-long/2addr v0, v2

    .line 166
    new-instance v2, Landroid/app/time/UnixEpochTime;

    invoke-direct {v2, p1, p2, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    return-object v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 109
    return v0

    .line 111
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 114
    :cond_12
    check-cast p1, Landroid/app/time/UnixEpochTime;

    .line 115
    iget-wide v2, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    iget-wide v4, p1, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget-wide v2, p0, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    iget-wide v4, p1, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 112
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getElapsedRealtimeMillis()J
    .registers 3

    .line 97
    iget-wide v0, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public whitelist getUnixEpochTimeMillis()J
    .registers 3

    .line 103
    iget-wide v0, p0, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 121
    iget-wide v0, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnixEpochTime{mElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnixEpochTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 148
    iget-wide v0, p0, Landroid/app/time/UnixEpochTime;->mElapsedRealtimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Landroid/app/time/UnixEpochTime;->mUnixEpochTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    return-void
.end method
