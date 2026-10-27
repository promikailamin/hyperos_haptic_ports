.class public final Landroid/app/time/TimeState;
.super Ljava/lang/Object;
.source "TimeState.java"

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
            "Landroid/app/time/TimeState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUnixEpochTime:Landroid/app/time/UnixEpochTime;

.field private final blacklist mUserShouldConfirmTime:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeState;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeState;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeState;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/app/time/TimeState$1;

    invoke-direct {v0}, Landroid/app/time/TimeState$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/UnixEpochTime;Z)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/UnixEpochTime;

    iput-object p1, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 61
    iput-boolean p2, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    .line 62
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeState;
    .registers 3

    .line 65
    const/4 v0, 0x0

    const-class v1, Landroid/app/time/UnixEpochTime;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/UnixEpochTime;

    .line 66
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 67
    new-instance v1, Landroid/app/time/TimeState;

    invoke-direct {v1, v0, p0}, Landroid/app/time/TimeState;-><init>(Landroid/app/time/UnixEpochTime;Z)V

    return-object v1
.end method

.method public static blacklist parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeState;
    .registers 6

    .line 79
    nop

    .line 80
    nop

    .line 81
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 83
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_76

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_ac

    :cond_12
    goto :goto_31

    :sswitch_13
    const-string v4, "--user_should_confirm_time"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v4, "--unix_epoch_time"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_32

    :sswitch_27
    const-string v4, "--elapsed_realtime"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_32

    :goto_31
    const/4 v4, -0x1

    :goto_32
    packed-switch v4, :pswitch_data_ba

    .line 98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :pswitch_4e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 95
    goto :goto_75

    .line 90
    :pswitch_5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 91
    goto :goto_75

    .line 86
    :pswitch_68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 87
    nop

    .line 100
    :goto_75
    goto :goto_5

    .line 103
    :cond_76
    if-eqz v0, :cond_a3

    .line 106
    if-eqz v1, :cond_9b

    .line 109
    if-eqz v2, :cond_93

    .line 113
    new-instance p0, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 114
    new-instance v0, Landroid/app/time/TimeState;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/time/TimeState;-><init>(Landroid/app/time/UnixEpochTime;Z)V

    return-object v0

    .line 110
    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No userShouldConfirmTime specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_9b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No unixEpochTimeMillis specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No elapsedRealtimeMillis specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_ac
    .sparse-switch
        0x2e13e6e -> :sswitch_27
        0x18745a3a -> :sswitch_1d
        0x27929724 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5b
        :pswitch_4e
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3

    .line 119
    const-string v0, "TimeState options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v0, "  --elapsed_realtime <elapsed realtime millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v0, "  --unix_epoch_time <Unix epoch time millis>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v0, "  --user_should_confirm_time {true|false}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/time/TimeState;

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

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 144
    return v0

    .line 146
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 149
    :cond_12
    check-cast p1, Landroid/app/time/TimeState;

    .line 150
    iget-object v2, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-object v3, p1, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    iget-boolean p1, p1, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 147
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    return-object v0
.end method

.method public whitelist getUserShouldConfirmTime()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 156
    iget-object v0, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-boolean v1, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeState{mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserShouldConfirmTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 72
    iget-object p2, p0, Landroid/app/time/TimeState;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-boolean p2, p0, Landroid/app/time/TimeState;->mUserShouldConfirmTime:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    return-void
.end method
