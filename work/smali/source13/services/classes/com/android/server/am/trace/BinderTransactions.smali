.class public Lcom/android/server/am/trace/BinderTransactions;
.super Ljava/lang/Object;
.source "BinderTransactions.java"


# static fields
.field private static final BINDER_TRANSATION_FILE:Ljava/lang/String; = "/dev/binderfs/binder_logs/state"

.field private static final DUMP_MAX_COUNT:I = 0xa

.field private static final REGEX_PATTERN:Ljava/lang/String; = "\\s+(outgoing|incoming|pending)\\s+transaction.*from\\s+(\\d+):\\d+\\s+to\\s+(\\d+):\\d+\\s+.*"

.field private static final TAG:Ljava/lang/String; = "BinderTransactions"


# instance fields
.field private mCheckPid:I

.field private mLocalToRemotesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecursiveMode:Z

.field private mRemotePids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "recursive"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    .line 70
    iput-boolean p1, p0, Lcom/android/server/am/trace/BinderTransactions;->mRecursiveMode:Z

    .line 71
    return-void
.end method

.method private addItem(IIZ)V
    .registers 7
    .param p1, "spid"    # I
    .param p2, "tpid"    # I
    .param p3, "outgoing"    # Z

    .line 190
    if-eqz p3, :cond_38

    .line 191
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 192
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 194
    :cond_22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 195
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_45

    .line 199
    :cond_38
    iget v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mCheckPid:I

    if-ne p2, v0, :cond_45

    .line 200
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_45
    :goto_45
    return-void
.end method

.method private findRemotePid(I)V
    .registers 5
    .param p1, "s"    # I

    .line 144
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 145
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 146
    .local v1, "p":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 147
    iget-object v2, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/am/trace/BinderTransactions;->findRemotePid(I)V

    .line 151
    .end local v1    # "p":Ljava/lang/Integer;
    :cond_3c
    goto :goto_1c

    .line 153
    :cond_3d
    return-void
.end method

.method static synthetic lambda$getTargetPidsStuckInBinder$0(Ljava/util/Set;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "ret"    # Ljava/util/Set;
    .param p1, "p"    # Ljava/lang/Integer;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_11

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private parseFromFile()V
    .registers 10

    .line 157
    const-string v0, "BinderTransactions"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 158
    iget-object v1, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 159
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/dev/binderfs/binder_logs/state"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    .local v1, "in":Ljava/io/BufferedReader;
    const-string v2, "\\s+(outgoing|incoming|pending)\\s+transaction.*from\\s+(\\d+):\\d+\\s+to\\s+(\\d+):\\d+\\s+.*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 163
    .local v2, "outP":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 164
    .local v3, "line":Ljava/lang/String;
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_52

    .line 166
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 167
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 168
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    .line 169
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    .line 170
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "outgoing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 168
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/trace/BinderTransactions;->addItem(IIZ)V

    goto :goto_1f

    .line 173
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_55} :catch_64
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_55} :catch_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_55} :catch_56

    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "outP":Ljava/util/regex/Pattern;
    .end local v3    # "line":Ljava/lang/String;
    goto :goto_6a

    .line 178
    :catch_56
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "Unexpected NumberFormatException "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    .line 176
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_5d
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unexpected IOException"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_6a

    .line 174
    :catch_64
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Unexpected FileNotFoundException"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_6a
    nop

    .line 181
    :goto_6b
    return-void
.end method


# virtual methods
.method public binderStateRead(Ljava/io/File;)V
    .registers 10
    .param p1, "outputFile"    # Ljava/io/File;

    .line 105
    const-string v0, "BinderTransactions"

    const/4 v1, 0x0

    .line 106
    .local v1, "binderfsNodePresent":Z
    const/4 v2, 0x0

    .line 107
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_4
    const-string v3, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_74

    .line 109
    :try_start_9
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/dev/binderfs/binder_logs/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 110
    const-string v3, "Collecting Binder state file from binderfs"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_1d

    .line 111
    const/4 v1, 0x1

    .line 114
    goto :goto_23

    .line 112
    :catch_1d
    move-exception v3

    .line 113
    .local v3, "e":Ljava/io/IOException;
    :try_start_1e
    const-string v4, "Binderfs node not found, Trying to collect it from debugfs"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_74

    .line 116
    .end local v3    # "e":Ljava/io/IOException;
    :goto_23
    if-nez v1, :cond_3f

    .line 117
    :try_start_25
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/kernel/debug/binder/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 118
    const-string v3, "Collecting Binder state file from debugfs"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_3f

    .line 120
    :catch_38
    move-exception v3

    .line 121
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_39
    const-string v4, "Debugfs node not found"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 122
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    nop

    .line 123
    :goto_40
    if-nez v2, :cond_43

    .line 124
    return-void

    .line 126
    :cond_43
    const-string/jumbo v3, "yyyy-MM-dd-HH-mm-ss"

    .line 127
    .local v3, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "now":Ljava/lang/String;
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 129
    .local v5, "out":Ljava/io/FileWriter;
    const/4 v6, 0x0

    .line 132
    .local v6, "line":Ljava/lang/String;
    :goto_5d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    if-eqz v7, :cond_6d

    .line 133
    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 134
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/io/FileWriter;->write(I)V

    goto :goto_5d

    .line 136
    :cond_6d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 137
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_73} :catch_74

    .line 140
    .end local v1    # "binderfsNodePresent":Z
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "now":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/FileWriter;
    .end local v6    # "line":Ljava/lang/String;
    goto :goto_7a

    .line 138
    :catch_74
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to collect state file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7a
    return-void
.end method

.method public getTargetPidsStuckInBinder(I)Ljava/util/Set;
    .registers 7
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/android/server/am/trace/BinderTransactions;->mCheckPid:I

    .line 80
    invoke-direct {p0}, Lcom/android/server/am/trace/BinderTransactions;->parseFromFile()V

    .line 81
    iget-boolean v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mRecursiveMode:Z

    if-nez v0, :cond_40

    .line 82
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 83
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 84
    .local v1, "remotePid":I
    iget-object v2, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v1    # "remotePid":I
    goto :goto_25

    :cond_3f
    goto :goto_6b

    .line 88
    :cond_40
    iget-object v0, p0, Lcom/android/server/am/trace/BinderTransactions;->mLocalToRemotesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 89
    .local v0, "keyPids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 90
    .local v2, "p":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/trace/BinderTransactions;->mCheckPid:I

    if-ne v3, v4, :cond_6a

    .line 91
    iget-object v3, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/trace/BinderTransactions;->findRemotePid(I)V

    .line 94
    .end local v2    # "p":Ljava/lang/Integer;
    :cond_6a
    goto :goto_4a

    .line 97
    .end local v0    # "keyPids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6b
    :goto_6b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/trace/BinderTransactions;->mRemotePids:Ljava/util/Set;

    new-instance v2, Lcom/android/server/am/trace/BinderTransactions$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/am/trace/BinderTransactions$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 100
    return-object v0
.end method
