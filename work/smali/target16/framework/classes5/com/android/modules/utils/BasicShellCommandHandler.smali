.class public abstract Lcom/android/modules/utils/BasicShellCommandHandler;
.super Ljava/lang/Object;
.source "BasicShellCommandHandler.java"


# static fields
.field protected static final blacklist DEBUG:Z = false

.field protected static final blacklist TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private blacklist mArgPos:I

.field private blacklist mArgs:[Ljava/lang/String;

.field private blacklist mCmd:Ljava/lang/String;

.field private blacklist mCurArgData:Ljava/lang/String;

.field private blacklist mErr:Ljava/io/FileDescriptor;

.field private blacklist mErrPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mFileErr:Ljava/io/FileOutputStream;

.field private blacklist mFileIn:Ljava/io/FileInputStream;

.field private blacklist mFileOut:Ljava/io/FileOutputStream;

.field private blacklist mIn:Ljava/io/FileDescriptor;

.field private blacklist mInputStream:Ljava/io/InputStream;

.field private blacklist mOut:Ljava/io/FileDescriptor;

.field private blacklist mOutPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mTarget:Landroid/os/Binder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I
    .registers 15

    .line 78
    const/4 v0, 0x0

    if-eqz p5, :cond_b

    array-length v1, p5

    if-lez v1, :cond_b

    .line 79
    aget-object v0, p5, v0

    .line 80
    const/4 v1, 0x1

    move v8, v1

    goto :goto_f

    .line 82
    :cond_b
    nop

    .line 83
    const/4 v1, 0x0

    move v8, v0

    move-object v0, v1

    .line 85
    :goto_f
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/modules/utils/BasicShellCommandHandler;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    .line 86
    iput-object v0, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    .line 95
    nop

    .line 97
    :try_start_1b
    iget-object p1, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->onCommand(Ljava/lang/String;)I

    move-result p1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_34

    .line 110
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p2, :cond_2a

    .line 111
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_2a
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p2, :cond_71

    .line 114
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_71

    .line 99
    :catchall_34
    move-exception v0

    move-object p1, v0

    .line 104
    :try_start_36
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    .line 105
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception occurred while executing \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\':"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_72

    .line 110
    iget-object p1, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p1, :cond_67

    .line 111
    iget-object p1, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_67
    iget-object p1, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p1, :cond_70

    .line 114
    iget-object p1, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 119
    :cond_70
    const/4 p1, -0x1

    :cond_71
    :goto_71
    return p1

    .line 109
    :catchall_72
    move-exception v0

    move-object p1, v0

    .line 110
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p2, :cond_7d

    .line 111
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_7d
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p2, :cond_86

    .line 114
    iget-object p2, v2, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 117
    :cond_86
    throw p1
.end method

.method public blacklist getAllArgs()[Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBufferedInputStream()Ljava/io/InputStream;
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_f

    .line 201
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    .line 203
    :cond_f
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public blacklist getErrFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getErrPrintWriter()Ljava/io/PrintWriter;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_9

    .line 171
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0

    .line 173
    :cond_9
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_18

    .line 174
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    .line 176
    :cond_18
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public blacklist getInFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getNextArg()Ljava/lang/String;
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 246
    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 247
    return-object v0

    .line 248
    :cond_a
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 249
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 251
    :cond_1c
    return-object v1
.end method

.method public blacklist getNextArgRequired()Ljava/lang/String;
    .registers 5

    .line 292
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_7

    .line 297
    return-object v0

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getNextOption()Ljava/lang/String;
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_52

    .line 215
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_e

    .line 216
    return-object v3

    .line 218
    :cond_e
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v0, v2

    .line 219
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 220
    return-object v3

    .line 222
    :cond_1d
    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    .line 223
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 224
    return-object v3

    .line 226
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4f

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4f

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4c

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    :cond_4c
    iput-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 232
    return-object v0

    .line 235
    :cond_4f
    iput-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 236
    return-object v0

    .line 212
    :cond_52
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getOutFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_f

    .line 144
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    .line 146
    :cond_f
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public blacklist getRawErrorStream()Ljava/io/OutputStream;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_d

    .line 161
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    .line 163
    :cond_d
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public blacklist getRawInputStream()Ljava/io/InputStream;
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_d

    .line 191
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public blacklist getRawOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_d

    .line 134
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    .line 136
    :cond_d
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public blacklist getRemainingArgsCount()I
    .registers 3

    .line 281
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 282
    const/4 v0, 0x0

    return v0

    .line 284
    :cond_9
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getTarget()Landroid/os/Binder;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    return-object v0
.end method

.method public blacklist handleDefaultCommands(Ljava/lang/String;)I
    .registers 5

    .line 301
    if-eqz p1, :cond_2e

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2e

    .line 304
    :cond_13
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31

    .line 302
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onHelp()V

    .line 306
    :goto_31
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .registers 7

    .line 58
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    .line 59
    iput-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    .line 60
    iput-object p3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    .line 61
    iput-object p4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    .line 62
    iput-object p5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    .line 63
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    .line 65
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    .line 67
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    .line 68
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    .line 69
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    .line 70
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    .line 71
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    .line 72
    return-void
.end method

.method public abstract blacklist onCommand(Ljava/lang/String;)I
.end method

.method public abstract blacklist onHelp()V
.end method

.method public blacklist peekNextArg()Ljava/lang/String;
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 257
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    .line 258
    :cond_7
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 259
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 261
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist peekRemainingArgs()[Ljava/lang/String;
    .registers 5

    .line 269
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRemainingArgsCount()I

    move-result v0

    .line 270
    new-array v0, v0, [Ljava/lang/String;

    .line 271
    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    :goto_8
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 272
    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 274
    :cond_1a
    return-object v0
.end method
