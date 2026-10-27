.class public Landroid/widget/TextViewOnReceiveContentListenerStubImpl;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListenerStubImpl.java"

# interfaces
.implements Landroid/widget/TextViewOnReceiveContentListenerStub;
.implements Landroid/os/RemoteCallback$OnResultListener;


# static fields
.field private static final blacklist EXTRA_CLIPBOARD:Ljava/lang/String; = "clipboard"

.field private static final blacklist EXTRA_CLIPBOARD_RESULT_CANCEEL:Ljava/lang/String; = "clipboard_cancel"

.field private static final blacklist EXTRA_CLIPBOARD_RESULT_OK:Ljava/lang/String; = "clipboard_ok"

.field public static final blacklist IME_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PACKAGE_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static final blacklist TAG:Ljava/lang/String; = "TextViewOnReceiveContentListenerStubImpl"

.field private static final blacklist TYPE_IMAGE:Ljava/lang/String; = "image/*"


# instance fields
.field private blacklist mClipData:Landroid/content/ClipData;

.field private blacklist mSuperClipboardSystemProperty:Ljava/lang/String;

.field private blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->IME_WHITE_LIST:Ljava/util/List;

    .line 44
    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic blacklist lambda$getDragViews$0(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)I
    .registers 8
    .param p0, "refView1"    # Ljava/lang/ref/WeakReference;
    .param p1, "refView2"    # Ljava/lang/ref/WeakReference;

    .line 193
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 194
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 195
    .local v1, "t1":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_29

    if-nez v1, :cond_12

    goto :goto_29

    .line 198
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_28

    .line 199
    const/4 v2, 0x1

    return v2

    .line 201
    :cond_28
    return v2

    .line 196
    :cond_29
    :goto_29
    return v2
.end method

.method private static blacklist replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .registers 7
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "replacement"    # Ljava/lang/CharSequence;

    .line 143
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 144
    .local v0, "selStart":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 145
    .local v1, "selEnd":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 146
    .local v2, "start":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 147
    .local v3, "end":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 148
    invoke-interface {p0, v2, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 149
    return-void
.end method


# virtual methods
.method public blacklist clipboardPaste(Landroid/content/ClipData;Landroid/content/Context;Landroid/text/Editable;Landroid/view/View;)Z
    .registers 16
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "view"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mSuperClipboardSystemProperty:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_12

    .line 55
    const-string v0, "persist.sys.support_super_clipboard"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mSuperClipboardSystemProperty:Ljava/lang/String;

    .line 58
    :cond_12
    iget-object v0, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mSuperClipboardSystemProperty:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TextViewOnReceiveContentListenerStubImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 59
    const-string v0, "Device not support super Clipboard function"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v2

    .line 62
    :cond_23
    const/4 v0, 0x0

    .line 63
    .local v0, "isTextType":Z
    const/4 v3, 0x0

    .line 64
    .local v3, "isUriType":Z
    const/4 v4, 0x0

    .line 65
    .local v4, "isHtmlType":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 66
    invoke-virtual {p1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    .line 67
    .local v6, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_39

    .line 68
    const/4 v0, 0x1

    goto :goto_48

    .line 69
    :cond_39
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 70
    const/4 v3, 0x1

    goto :goto_48

    .line 71
    :cond_41
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_48

    .line 72
    const/4 v4, 0x1

    .line 65
    .end local v6    # "item":Landroid/content/ClipData$Item;
    :cond_48
    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 76
    .end local v5    # "i":I
    :cond_4b
    if-nez v4, :cond_11d

    if-nez v0, :cond_11d

    if-eqz v3, :cond_11d

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uri type start dragDrop, first ClipData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 83
    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v6}, Landroid/view/ViewRootImplStub;->isSupportDragAndDrop(Landroid/view/ViewRootImpl;)Z

    move-result v5

    .line 84
    .local v5, "isSupportDragAndDrop":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportDragAndDrop:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.tencent.mm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_d1

    .line 86
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    const-string v10, "image/*"

    invoke-virtual {v6, v10}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    if-eqz v6, :cond_d1

    if-eqz v5, :cond_d1

    .line 88
    iput-object v8, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 90
    invoke-virtual {p0, p4}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->isSearchViewAndDrop(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 91
    return v2

    .line 93
    :cond_bc
    const-string v6, "Wechat trigger dragDrop"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    .line 95
    return v9

    .line 98
    :cond_d1
    if-eqz v5, :cond_11b

    sget-object v6, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->IME_WHITE_LIST:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11b

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 100
    invoke-virtual {p0, p4}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->isSearchViewAndDrop(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_f2

    .line 101
    iput-object v8, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 102
    return v2

    .line 104
    :cond_f2
    const-string v2, "Starting alertDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p1, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mClipData:Landroid/content/ClipData;

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/os/RemoteCallback;

    invoke-direct {v2, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 109
    .local v2, "remoteCallback":Landroid/os/RemoteCallback;
    const-string v6, "clipboard"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    invoke-static {}, Landroid/widget/ClipboardAlertDialogStub;->getInstance()Landroid/widget/ClipboardAlertDialogStub;

    move-result-object v6

    .line 112
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    .line 111
    invoke-interface {v6, p4, v7, v1}, Landroid/widget/ClipboardAlertDialogStub;->createClipboardAlertDialog(Landroid/view/View;Landroid/content/ClipDescription;Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Landroid/widget/ClipboardAlertDialogStub;->getInstance()Landroid/widget/ClipboardAlertDialogStub;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/widget/ClipboardAlertDialogStub;->setClipboardAlertDialog(Z)V

    .line 114
    return v9

    .line 116
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "remoteCallback":Landroid/os/RemoteCallback;
    :cond_11b
    iput-object v8, p0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 118
    .end local v5    # "isSupportDragAndDrop":Z
    :cond_11d
    return v2
.end method

.method public blacklist getDragViews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 192
    .local p1, "dragViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 203
    return-void
.end method

.method public blacklist isSearchViewAndDrop(Landroid/view/View;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 122
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    .line 124
    .local v0, "imeOptions":I
    const/4 v2, 0x3

    const-string v3, "TextViewOnReceiveContentListenerStubImpl"

    if-ne v0, v2, :cond_18

    .line 125
    const-string v1, "wechat searchView, not dragDrop"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v1, 0x0

    return v1

    .line 128
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wechat searchView, but imeOptions:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", so drag"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v1

    .line 132
    .end local v0    # "imeOptions":I
    :cond_35
    return v1
.end method

.method public whitelist onResult(Landroid/os/Bundle;)V
    .registers 25
    .param p1, "result"    # Landroid/os/Bundle;

    .line 154
    move-object/from16 v1, p0

    invoke-static {}, Landroid/widget/ClipboardAlertDialogStub;->getInstance()Landroid/widget/ClipboardAlertDialogStub;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/widget/ClipboardAlertDialogStub;->setClipboardAlertDialog(Z)V

    .line 155
    const-string v0, "clipboard_cancel"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "TextViewOnReceiveContentListenerStubImpl"

    if-eqz v0, :cond_1f

    .line 156
    const-string v0, "RemoteCallback onResult cancel"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object v4, v1, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 158
    return-void

    .line 161
    :cond_1f
    const/4 v0, 0x2

    :try_start_20
    new-array v6, v0, [I

    .line 163
    .local v6, "dragCoordinate":[I
    invoke-static {}, Landroid/view/ViewRootImplStub;->getInstance()Landroid/view/ViewRootImplStub;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewRootImplStub;->getViewRootImplMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v1, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 164
    .local v7, "dragViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    iput-object v4, v1, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 165
    invoke-virtual {v1, v7}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->getDragViews(Ljava/util/List;)V

    .line 166
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3b
    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_93

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 167
    .local v9, "WeakDragView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 168
    .local v10, "dragView":Landroid/view/View;
    if-eqz v10, :cond_3b

    invoke-virtual {v10}, Landroid/view/View;->isShown()Z

    move-result v11

    if-nez v11, :cond_56

    .line 169
    goto :goto_3b

    .line 171
    :cond_56
    invoke-virtual {v10, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 172
    const/4 v12, 0x3

    .line 173
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    aget v13, v6, v2

    sub-int/2addr v11, v13

    div-int/2addr v11, v0

    int-to-float v13, v11

    .line 174
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    const/4 v14, 0x1

    aget v14, v6, v14

    sub-int/2addr v11, v14

    div-int/2addr v11, v0

    int-to-float v14, v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v11, v1, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mClipData:Landroid/content/ClipData;

    .line 176
    invoke-virtual {v11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v18

    iget-object v11, v1, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mClipData:Landroid/content/ClipData;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 172
    move-object/from16 v19, v11

    invoke-static/range {v12 .. v22}, Landroid/view/DragEvent;->obtain(IFFFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v11

    .line 178
    .local v11, "dragEvent":Landroid/view/DragEvent;
    invoke-virtual {v10, v11}, Landroid/view/View;->callDragEventHandlerForSystem(Landroid/view/DragEvent;)Z

    move-result v12

    .line 179
    .local v12, "deal":Z
    if-eqz v12, :cond_92

    .line 180
    const-string v0, "Complete dragDrop"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_91} :catch_94

    .line 181
    goto :goto_93

    .line 183
    .end local v9    # "WeakDragView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v10    # "dragView":Landroid/view/View;
    .end local v11    # "dragEvent":Landroid/view/DragEvent;
    .end local v12    # "deal":Z
    :cond_92
    goto :goto_3b

    .line 187
    .end local v6    # "dragCoordinate":[I
    .end local v7    # "dragViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    :cond_93
    :goto_93
    goto :goto_9e

    .line 184
    :catch_94
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    iput-object v4, v1, Landroid/widget/TextViewOnReceiveContentListenerStubImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9e
    return-void
.end method
