.class Landroid/media/Tokenizer$DataTokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataTokenizer"
.end annotation


# instance fields
.field private blacklist mData:Ljava/lang/StringBuilder;

.field final synthetic blacklist this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor blacklist <init>(Landroid/media/Tokenizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    .line 195
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 196
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v2

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object p2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Landroid/media/Tokenizer;->-$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V

    .line 199
    iget-object p1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {p1}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    .line 200
    const/4 p1, 0x1

    return p1

    .line 202
    :cond_37
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blacklist start()Landroid/media/Tokenizer$TokenizerPhase;
    .registers 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    .line 191
    return-object p0
.end method

.method public blacklist tokenize()V
    .registers 5

    .line 207
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v0}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v1

    :goto_10
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8a

    .line 209
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_67

    .line 210
    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_87

    .line 211
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_87

    .line 212
    const-string v2, "&gt;"

    const-string v3, ">"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_87

    .line 213
    const-string v2, "&lrm;"

    const-string v3, "\u200e"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_87

    .line 214
    const-string v2, "&rlm;"

    const-string v3, "\u200f"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_87

    .line 215
    const-string v2, "&nbsp;"

    const-string v3, "\u00a0"

    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 216
    goto :goto_87

    .line 218
    :cond_67
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_87

    .line 219
    nop

    .line 220
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmTagTokenizer(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/Tokenizer;->-$$Nest$fputmPhase(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)V

    .line 221
    move v0, v1

    goto :goto_8a

    .line 208
    :cond_87
    :goto_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 224
    :cond_8a
    :goto_8a
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v2}, Landroid/media/Tokenizer;->-$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v3}, Landroid/media/Tokenizer;->-$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1}, Landroid/media/Tokenizer;->-$$Nest$fgetmListener(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/Tokenizer$OnTokenListener;->onData(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-static {v1, v0}, Landroid/media/Tokenizer;->-$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V

    .line 229
    return-void
.end method
