.class public Landroid/filterfw/io/PatternScanner;
.super Ljava/lang/Object;
.source "PatternScanner.java"


# instance fields
.field private blacklist mIgnorePattern:Ljava/util/regex/Pattern;

.field private blacklist mInput:Ljava/lang/String;

.field private blacklist mLineNo:I

.field private blacklist mOffset:I

.field private blacklist mStartOfLine:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 35
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 31
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 32
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 39
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    .line 41
    iget-object p1, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist atEnd()Z
    .registers 3

    .line 102
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 71
    invoke-virtual {p0, p1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p1

    .line 72
    if-eqz p1, :cond_7

    .line 75
    return-object p1

    .line 73
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist lineNo()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    return v0
.end method

.method public blacklist peek(Ljava/util/regex/Pattern;)Z
    .registers 4

    .line 80
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 85
    :cond_9
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 86
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 89
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    return p1
.end method

.method public blacklist skip(Ljava/util/regex/Pattern;)V
    .registers 4

    .line 93
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 94
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 95
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 96
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 97
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    iput p1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 99
    :cond_26
    return-void
.end method

.method public blacklist tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 4

    .line 46
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 51
    :cond_9
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 52
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 55
    nop

    .line 56
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 57
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 58
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 59
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 56
    :cond_3f
    const/4 p1, 0x0

    .line 63
    :goto_40
    if-eqz p1, :cond_4b

    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_4b

    .line 64
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 67
    :cond_4b
    return-object p1
.end method

.method public blacklist unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 110
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' <- Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist updateLineCount(II)V
    .registers 5

    .line 116
    nop

    :goto_1
    if-ge p1, p2, :cond_1a

    .line 117
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    .line 118
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 119
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 116
    :cond_17
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 122
    :cond_1a
    return-void
.end method
