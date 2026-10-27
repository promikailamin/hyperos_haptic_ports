.class public Landroid/net/util/SharedLog;
.super Ljava/lang/Object;
.source "SharedLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/SharedLog$LocalLog;,
        Landroid/net/util/SharedLog$Category;
    }
.end annotation


# static fields
.field private static final COMPONENT_DELIMITER:Ljava/lang/String; = "."

.field private static final DEFAULT_MAX_RECORDS:I = 0x1f4


# instance fields
.field private final mComponent:Ljava/lang/String;

.field private final mLocalLog:Landroid/net/util/SharedLog$LocalLog;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "maxRecords"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/net/util/SharedLog$LocalLog;

    invoke-direct {v0, p1}, Landroid/net/util/SharedLog$LocalLog;-><init>(I)V

    invoke-direct {p0, v0, p2, p2}, Landroid/net/util/SharedLog;-><init>(Landroid/net/util/SharedLog$LocalLog;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/net/util/SharedLog$LocalLog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "localLog"    # Landroid/net/util/SharedLog$LocalLog;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "component"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    .line 71
    iput-object p2, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 62
    const/16 v0, 0x1f4

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;-><init>(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method private isRootLogInstance()Z
    .registers 3

    .line 211
    iget-object v0, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private logLine(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "category"    # Landroid/net/util/SharedLog$Category;
    .param p2, "msg"    # Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 202
    .local v0, "sj":Ljava/util/StringJoiner;
    invoke-direct {p0}, Landroid/net/util/SharedLog;->isRootLogInstance()Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    :cond_2b
    sget-object v1, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    if-eq p1, v1, :cond_36

    invoke-virtual {p1}, Landroid/net/util/SharedLog$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 204
    :cond_36
    invoke-virtual {v0, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "category"    # Landroid/net/util/SharedLog$Category;
    .param p2, "msg"    # Ljava/lang/String;

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/net/util/SharedLog;->logLine(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog$LocalLog;->append(Ljava/lang/String;)V

    .line 197
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 95
    iget-object v0, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    invoke-virtual {v0, p2}, Landroid/net/util/SharedLog$LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 96
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 118
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 137
    if-nez p2, :cond_6

    .line 138
    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 139
    return-void

    .line 141
    :cond_6
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->ERROR:Landroid/net/util/SharedLog$Category;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    return-void
.end method

.method public forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;
    .registers 5
    .param p1, "component"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Landroid/net/util/SharedLog;->isRootLogInstance()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/util/SharedLog;->mComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    :cond_1f
    new-instance v0, Landroid/net/util/SharedLog;

    iget-object v1, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    iget-object v2, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Landroid/net/util/SharedLog;-><init>(Landroid/net/util/SharedLog$LocalLog;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 172
    sget-object v0, Landroid/net/util/SharedLog$Category;->NONE:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    return-void
.end method

.method public varargs logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 182
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public mark(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 191
    sget-object v0, Landroid/net/util/SharedLog$Category;->MARK:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v0, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    return-void
.end method

.method public reverseDump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 104
    iget-object v0, p0, Landroid/net/util/SharedLog;->mLocalLog:Landroid/net/util/SharedLog$LocalLog;

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog$LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    .line 105
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Landroid/net/util/SharedLog;->mTag:Ljava/lang/String;

    sget-object v1, Landroid/net/util/SharedLog$Category;->WARN:Landroid/net/util/SharedLog$Category;

    invoke-direct {p0, v1, p1}, Landroid/net/util/SharedLog;->record(Landroid/net/util/SharedLog$Category;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
