.class public final Landroid/app/timedetector/TimeSuggestionHelper;
.super Ljava/lang/Object;
.source "TimeSuggestionHelper.java"


# instance fields
.field private blacklist mDebugInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHelpedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist mUnixEpochTime:Landroid/app/time/UnixEpochTime;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/app/time/UnixEpochTime;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    .line 61
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/UnixEpochTime;

    iput-object p1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 62
    return-void
.end method

.method public static blacklist handleCreateFromParcel(Ljava/lang/Class;Landroid/os/Parcel;)Landroid/app/timedetector/TimeSuggestionHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/app/timedetector/TimeSuggestionHelper;"
        }
    .end annotation

    .line 148
    const-class v0, Landroid/app/time/UnixEpochTime;

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/UnixEpochTime;

    .line 150
    new-instance v2, Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-direct {v2, p0, v0}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    .line 152
    const-class p0, Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v2, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    .line 153
    return-object v2
.end method

.method public static blacklist handleParseCommandLineArg(Ljava/lang/Class;Landroid/os/ShellCommand;)Landroid/app/timedetector/TimeSuggestionHelper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/ShellCommand;",
            ")",
            "Landroid/app/timedetector/TimeSuggestionHelper;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 166
    nop

    .line 167
    const/4 v0, 0x0

    move-object v1, v0

    .line 169
    :goto_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_94

    :cond_10
    goto :goto_2f

    :sswitch_11
    const-string v3, "--unix_epoch_time"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v3, "--elapsed_realtime"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_30

    :sswitch_25
    const-string v3, "--reference_time"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_30

    :goto_2f
    const/4 v3, -0x1

    :goto_30
    packed-switch v3, :pswitch_data_a2

    .line 181
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :pswitch_4c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 178
    goto :goto_66

    .line 173
    :pswitch_59
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 174
    nop

    .line 183
    :goto_66
    goto :goto_3

    .line 186
    :cond_67
    if-eqz v0, :cond_8b

    .line 189
    if-eqz v1, :cond_83

    .line 193
    new-instance p1, Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 194
    new-instance v0, Landroid/app/timedetector/TimeSuggestionHelper;

    invoke-direct {v0, p0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;-><init>(Ljava/lang/Class;Landroid/app/time/UnixEpochTime;)V

    .line 195
    const-string p0, "Command line injection"

    invoke-virtual {v0, p0}, Landroid/app/timedetector/TimeSuggestionHelper;->addDebugInfo(Ljava/lang/String;)V

    .line 196
    return-object v0

    .line 190
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No unixEpochTimeMillis specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No referenceTimeMillis specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_94
    .sparse-switch
        0xf650e1 -> :sswitch_25
        0x2e13e6e -> :sswitch_1b
        0x18745a3a -> :sswitch_11
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_59
        :pswitch_59
        :pswitch_4c
    .end packed-switch
.end method

.method public static blacklist handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 202
    const-string v0, "%s suggestion options:\n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 203
    const-string p1, "  --elapsed_realtime <elapsed realtime millis> - the elapsed realtime millis when unix epoch time was read"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string p1, "  --unix_epoch_time <Unix epoch time millis>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "See "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for more information"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)V
    .registers 3

    .line 83
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    .line 86
    :cond_b
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public blacklist addDebugInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    .line 107
    :cond_f
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-void
.end method

.method public varargs blacklist addDebugInfo([Ljava/lang/String;)V
    .registers 2

    .line 95
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;->addDebugInfo(Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 115
    if-ne p0, p1, :cond_4

    .line 116
    const/4 p1, 0x1

    return p1

    .line 118
    :cond_4
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_18

    .line 121
    :cond_11
    check-cast p1, Landroid/app/timedetector/TimeSuggestionHelper;

    .line 122
    invoke-virtual {p0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;->handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z

    move-result p1

    return p1

    .line 119
    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getDebugInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 73
    :goto_f
    return-object v0
.end method

.method public blacklist getUnixEpochTime()Landroid/app/time/UnixEpochTime;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    return-object v0
.end method

.method public blacklist handleEquals(Landroid/app/timedetector/TimeSuggestionHelper;)Z
    .registers 4

    .line 127
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    iget-object v1, p1, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    iget-object p1, p1, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 128
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 127
    :goto_17
    return p1
.end method

.method public blacklist handleToString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mHelpedClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleWriteToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 158
    iget-object p2, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-object p2, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 160
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/app/timedetector/TimeSuggestionHelper;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
