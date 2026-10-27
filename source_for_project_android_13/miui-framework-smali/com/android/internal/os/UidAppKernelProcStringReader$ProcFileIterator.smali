.class public Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
.super Ljava/lang/Object;
.source "UidAppKernelProcStringReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppKernelProcStringReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcFileIterator"
.end annotation


# instance fields
.field private blacklist mPos:I

.field private final blacklist mSize:I

.field final synthetic blacklist this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/os/UidAppKernelProcStringReader;
    .param p2, "size"    # I

    .line 163
    iput-object p1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-static {v0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->-$$Nest$fgetmReadLock(Lcom/android/internal/os/UidAppKernelProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 201
    return-void
.end method

.method public blacklist hasNextLine()Z
    .registers 3

    .line 169
    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist nextLine()Ljava/nio/CharBuffer;
    .registers 5

    .line 180
    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    if-lt v0, v1, :cond_8

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_8
    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    .line 185
    .local v0, "i":I
    :goto_a
    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-static {v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;->-$$Nest$fgetmBuf(Lcom/android/internal/os/UidAppKernelProcStringReader;)[C

    move-result-object v1

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 188
    :cond_1d
    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    .line 189
    .local v1, "start":I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    .line 190
    iget-object v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-static {v2}, Lcom/android/internal/os/UidAppKernelProcStringReader;->-$$Nest$fgetmBuf(Lcom/android/internal/os/UidAppKernelProcStringReader;)[C

    move-result-object v2

    sub-int v3, v0, v1

    invoke-static {v2, v1, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v2

    return-object v2
.end method

.method public blacklist size()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    return v0
.end method
