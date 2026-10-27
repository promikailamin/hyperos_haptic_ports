.class public final Landroid/widget/TextViewOnReceiveContentListener;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;
    }
.end annotation


# static fields
.field private static final blacklist AUTOFILL_NON_TEXT_REQUIRES_ON_RECEIVE_CONTENT_LISTENER:J = 0x9bd49a9L

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# instance fields
.field private blacklist mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist coerceToText(Landroid/content/ClipData;Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "clip"    # Landroid/content/ClipData;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .line 155
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 156
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 158
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_24

    .line 159
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 160
    .local v2, "itemText":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_21
    move-object v3, v2

    :goto_22
    move-object v2, v3

    goto :goto_2c

    .line 162
    .end local v2    # "itemText":Ljava/lang/CharSequence;
    :cond_24
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 164
    .restart local v2    # "itemText":Ljava/lang/CharSequence;
    :goto_2c
    if-eqz v2, :cond_31

    .line 165
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    .end local v2    # "itemText":Ljava/lang/CharSequence;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 168
    .end local v1    # "i":I
    :cond_34
    return-object v0
.end method

.method private static blacklist containsOnlyText(Landroid/content/ClipData;)Z
    .registers 5
    .param p0, "clip"    # Landroid/content/ClipData;

    .line 354
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 355
    .local v0, "description":Landroid/content/ClipDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "mimeType":Ljava/lang/String;
    const-string/jumbo v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 358
    const/4 v3, 0x0

    return v3

    .line 355
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 361
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist containsUri(Landroid/content/ClipData;)Z
    .registers 4
    .param p0, "clip"    # Landroid/content/ClipData;

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 346
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 347
    const/4 v2, 0x1

    return v2

    .line 344
    .end local v1    # "item":Landroid/content/ClipData$Item;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist handleNonTextViaImeCommitContent(Landroid/content/ClipData;)Landroid/content/ClipData;
    .registers 18
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 276
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 277
    .local v1, "description":Landroid/content/ClipDescription;
    invoke-static/range {p1 .. p1}, Landroid/widget/TextViewOnReceiveContentListener;->containsUri(Landroid/content/ClipData;)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "ReceiveContent"

    if-eqz v2, :cond_114

    invoke-static/range {p1 .. p1}, Landroid/widget/TextViewOnReceiveContentListener;->containsOnlyText(Landroid/content/ClipData;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v2, p0

    goto/16 :goto_116

    .line 285
    :cond_19
    move-object/from16 v2, p0

    iget-object v5, v2, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    .line 286
    .local v5, "icInfo":Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;
    const/4 v6, 0x0

    if-eqz v5, :cond_2b

    invoke-static {v5}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->-$$Nest$fgetmInputConnection(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputConnection;

    goto :goto_2c

    :cond_2b
    move-object v7, v6

    .line 287
    .local v7, "inputConnection":Landroid/view/inputmethod/InputConnection;
    :goto_2c
    const/4 v8, 0x3

    if-nez v7, :cond_3c

    .line 288
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 289
    const-string/jumbo v3, "onReceive: No usable EditorInfo/InputConnection"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_3b
    return-object v0

    .line 293
    :cond_3c
    invoke-static {v5}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->-$$Nest$fgetmEditorInfoContentMimeTypes(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)[Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "editorInfoContentMimeTypes":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/widget/TextViewOnReceiveContentListener;->isClipMimeTypeSupported([Ljava/lang/String;Landroid/content/ClipDescription;)Z

    move-result v10

    if-nez v10, :cond_57

    .line 295
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 296
    const-string/jumbo v3, "onReceive: MIME type is not supported by the app\'s commitContent impl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_56
    return-object v0

    .line 302
    :cond_57
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive: Trying to insert via IME: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_74
    new-instance v8, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .local v8, "remainingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7b
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    if-ge v11, v12, :cond_107

    .line 307
    invoke-virtual {v0, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    .line 308
    .local v12, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v13

    .line 309
    .local v13, "uri":Landroid/net/Uri;
    if-eqz v13, :cond_e1

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string v15, "content"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_98

    goto :goto_e1

    .line 316
    :cond_98
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_b5

    .line 317
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive: Calling commitContent: uri="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_b5
    new-instance v14, Landroid/view/inputmethod/InputContentInfo;

    invoke-direct {v14, v13, v1}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;)V

    .line 320
    .local v14, "contentInfo":Landroid/view/inputmethod/InputContentInfo;
    invoke-interface {v7, v14, v10, v6}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_102

    .line 321
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_dd

    .line 322
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive: Call to commitContent returned false: uri="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_dd
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_102

    .line 310
    .end local v14    # "contentInfo":Landroid/view/inputmethod/InputContentInfo;
    :cond_e1
    :goto_e1
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_fe

    .line 311
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onReceive: No content URI in item: uri="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_fe
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    nop

    .line 306
    .end local v12    # "item":Landroid/content/ClipData$Item;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_102
    :goto_102
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto/16 :goto_7b

    .line 327
    .end local v11    # "i":I
    :cond_107
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 328
    return-object v6

    .line 330
    :cond_10e
    new-instance v3, Landroid/content/ClipData;

    invoke-direct {v3, v1, v8}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V

    return-object v3

    .line 277
    .end local v5    # "icInfo":Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;
    .end local v7    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v8    # "remainingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    .end local v9    # "editorInfoContentMimeTypes":[Ljava/lang/String;
    :cond_114
    move-object/from16 v2, p0

    .line 278
    :goto_116
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: Clip doesn\'t contain any non-text URIs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_133
    return-object v0
.end method

.method private static blacklist isClipMimeTypeSupported([Ljava/lang/String;Landroid/content/ClipDescription;)Z
    .registers 7
    .param p0, "supportedMimeTypes"    # [Ljava/lang/String;
    .param p1, "description"    # Landroid/content/ClipDescription;

    .line 335
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 336
    .local v3, "imeSupportedMimeType":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 337
    const/4 v0, 0x1

    return v0

    .line 335
    .end local v3    # "imeSupportedMimeType":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 340
    :cond_12
    return v1
.end method

.method private static blacklist isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 194
    return v1

    .line 196
    :cond_8
    const-wide/32 v2, 0x9bd49a9

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 197
    return v1

    .line 199
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onReceiveForAutofill(Landroid/widget/TextView;Landroid/view/ContentInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "payload"    # Landroid/view/ContentInfo;

    .line 135
    invoke-virtual {p2}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v0

    .line 136
    .local v0, "clip":Landroid/content/ClipData;
    invoke-static {p1}, Landroid/widget/TextViewOnReceiveContentListener;->isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 137
    invoke-direct {p0, v0}, Landroid/widget/TextViewOnReceiveContentListener;->handleNonTextViaImeCommitContent(Landroid/content/ClipData;)Landroid/content/ClipData;

    move-result-object v0

    .line 138
    if-nez v0, :cond_20

    .line 139
    const/4 v1, 0x2

    const-string v2, "ReceiveContent"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 140
    const-string/jumbo v1, "onReceive: Handled via IME"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1f
    return-void

    .line 145
    :cond_20
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/ContentInfo;->getFlags()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/TextViewOnReceiveContentListener;->coerceToText(Landroid/content/ClipData;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 147
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    .line 150
    .local v2, "editable":Landroid/text/Editable;
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 151
    return-void
.end method

.method private static blacklist replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .registers 7
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "replacement"    # Ljava/lang/CharSequence;

    .line 126
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 127
    .local v0, "selStart":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 128
    .local v1, "selEnd":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 129
    .local v2, "start":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 130
    .local v3, "end":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 131
    invoke-interface {p0, v2, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 132
    return-void
.end method


# virtual methods
.method blacklist clearInputConnectionInfo()V
    .registers 2

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    .line 245
    return-void
.end method

.method public blacklist getFallbackMimeTypesForAutofill(Landroid/widget/TextView;)[Ljava/lang/String;
    .registers 4
    .param p1, "view"    # Landroid/widget/TextView;

    .line 258
    invoke-static {p1}, Landroid/widget/TextViewOnReceiveContentListener;->isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 259
    return-object v1

    .line 261
    :cond_8
    iget-object v0, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    .line 262
    .local v0, "icInfo":Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;
    if-nez v0, :cond_d

    .line 263
    return-object v1

    .line 265
    :cond_d
    invoke-static {v0}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->-$$Nest$fgetmEditorInfoContentMimeTypes(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "payload"    # Landroid/view/ContentInfo;

    .line 71
    const-string v0, "ReceiveContent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_20
    invoke-virtual {p2}, Landroid/view/ContentInfo;->getSource()I

    move-result v1

    .line 75
    .local v1, "source":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 78
    return-object p2

    .line 80
    :cond_28
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_33

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Landroid/widget/TextViewOnReceiveContentListener;->onReceiveForAutofill(Landroid/widget/TextView;Landroid/view/ContentInfo;)V

    .line 82
    return-object v3

    .line 90
    :cond_33
    invoke-virtual {p2}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v2

    .line 91
    .local v2, "clip":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/view/ContentInfo;->getFlags()I

    move-result v4

    .line 92
    .local v4, "flags":I
    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Editable;

    .line 93
    .local v5, "editable":Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 94
    .local v6, "context":Landroid/content/Context;
    const/4 v7, 0x0

    .line 97
    .local v7, "didFirst":Z
    invoke-static {}, Landroid/widget/TextViewOnReceiveContentListenerStub;->getInstance()Landroid/widget/TextViewOnReceiveContentListenerStub;

    move-result-object v8

    .line 98
    invoke-interface {v8, v2, v6, v5, p1}, Landroid/widget/TextViewOnReceiveContentListenerStub;->clipboardPaste(Landroid/content/ClipData;Landroid/content/Context;Landroid/text/Editable;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 99
    const-string v8, "Trigger clipboardPaste"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v3

    .line 103
    :cond_59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5a
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-ge v0, v8, :cond_9c

    .line 105
    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_78

    .line 106
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 107
    .local v8, "itemText":Ljava/lang/CharSequence;
    instance-of v9, v8, Landroid/text/Spanned;

    if-eqz v9, :cond_75

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_76

    :cond_75
    move-object v9, v8

    :goto_76
    move-object v8, v9

    goto :goto_80

    .line 109
    .end local v8    # "itemText":Ljava/lang/CharSequence;
    :cond_78
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 111
    .restart local v8    # "itemText":Ljava/lang/CharSequence;
    :goto_80
    if-eqz v8, :cond_99

    .line 112
    if-nez v7, :cond_89

    .line 113
    invoke-static {v5, v8}, Landroid/widget/TextViewOnReceiveContentListener;->replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    .line 114
    const/4 v7, 0x1

    goto :goto_99

    .line 116
    :cond_89
    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    const-string v10, "\n"

    invoke-interface {v5, v9, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 117
    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-interface {v5, v9, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 103
    .end local v8    # "itemText":Ljava/lang/CharSequence;
    :cond_99
    :goto_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 121
    .end local v0    # "i":I
    :cond_9c
    return-object v3
.end method

.method blacklist setInputConnectionInfo(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 227
    invoke-static {p1}, Landroid/widget/TextViewOnReceiveContentListener;->isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 228
    iput-object v1, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    .line 229
    return-void

    .line 231
    :cond_a
    iget-object v0, p3, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 232
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    if-eqz v0, :cond_1a

    array-length v2, v0

    if-nez v2, :cond_12

    goto :goto_1a

    .line 235
    :cond_12
    new-instance v2, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    invoke-direct {v2, p2, v0, v1}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;-><init>(Landroid/view/inputmethod/InputConnection;[Ljava/lang/String;Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo-IA;)V

    iput-object v2, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    goto :goto_1c

    .line 233
    :cond_1a
    :goto_1a
    iput-object v1, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    .line 237
    :goto_1c
    return-void
.end method
