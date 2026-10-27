.class public Landroid/app/SearchDialog;
.super Landroid/app/Dialog;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchDialog$SearchBar;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final greylist-max-o INSTANCE_KEY_APPDATA:Ljava/lang/String; = "data"

.field private static final greylist-max-o INSTANCE_KEY_COMPONENT:Ljava/lang/String; = "comp"

.field private static final greylist-max-o INSTANCE_KEY_USER_QUERY:Ljava/lang/String; = "uQry"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SearchDialog"

.field private static final greylist-max-o SEARCH_PLATE_LEFT_PADDING_NON_GLOBAL:I = 0x7


# instance fields
.field private greylist-max-o mActivityContext:Landroid/content/Context;

.field private greylist-max-o mAppIcon:Landroid/widget/ImageView;

.field private greylist-max-o mAppSearchData:Landroid/os/Bundle;

.field private greylist-max-o mBadgeLabel:Landroid/widget/TextView;

.field private greylist-max-o mCloseSearch:Landroid/view/View;

.field private greylist-max-o mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mLaunchComponent:Landroid/content/ComponentName;

.field private final greylist-max-o mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final greylist-max-o mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private final greylist-max-o mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private greylist-max-o mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

.field private greylist-max-o mSearchAutoCompleteImeOptions:I

.field private greylist-max-o mSearchPlate:Landroid/view/View;

.field private greylist-max-o mSearchView:Landroid/widget/SearchView;

.field private greylist-max-o mSearchable:Landroid/app/SearchableInfo;

.field private greylist-max-o mUserQuery:Ljava/lang/String;

.field private final greylist-max-o mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final greylist-max-o mVoiceWebSearchIntent:Landroid/content/Intent;

.field private greylist-max-o mWorkingSpinner:Landroid/graphics/drawable/Drawable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monClosePressed(Landroid/app/SearchDialog;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/SearchDialog;->onClosePressed()Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/SearchManager;)V
    .registers 5

    .line 128
    invoke-static {p1}, Landroid/app/SearchDialog;->resolveDialogTheme(Landroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 106
    new-instance p1, Landroid/app/SearchDialog$1;

    invoke-direct {p1, p0}, Landroid/app/SearchDialog$1;-><init>(Landroid/app/SearchDialog;)V

    iput-object p1, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 683
    new-instance p1, Landroid/app/SearchDialog$3;

    invoke-direct {p1, p0}, Landroid/app/SearchDialog$3;-><init>(Landroid/app/SearchDialog;)V

    iput-object p1, p0, Landroid/app/SearchDialog;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 690
    new-instance p1, Landroid/app/SearchDialog$4;

    invoke-direct {p1, p0}, Landroid/app/SearchDialog$4;-><init>(Landroid/app/SearchDialog;)V

    iput-object p1, p0, Landroid/app/SearchDialog;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 703
    new-instance p1, Landroid/app/SearchDialog$5;

    invoke-direct {p1, p0}, Landroid/app/SearchDialog$5;-><init>(Landroid/app/SearchDialog;)V

    iput-object p1, p0, Landroid/app/SearchDialog;->mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

    .line 131
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 132
    iget-object p1, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object p1, p0, Landroid/app/SearchDialog;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v1, "web_search"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 137
    iget-object p1, p0, Landroid/app/SearchDialog;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method private greylist-max-o createContentView()V
    .registers 4

    .line 168
    const v0, 0x109013d

    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->setContentView(I)V

    .line 171
    const v0, 0x10204fd

    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    .line 172
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 173
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 174
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 175
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Landroid/app/SearchDialog;->mOnSuggestionSelectionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 176
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 178
    const v0, 0x1020027

    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchDialog;->mCloseSearch:Landroid/view/View;

    .line 179
    iget-object v0, p0, Landroid/app/SearchDialog;->mCloseSearch:Landroid/view/View;

    new-instance v2, Landroid/app/SearchDialog$2;

    invoke-direct {v2, p0}, Landroid/app/SearchDialog$2;-><init>(Landroid/app/SearchDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x10204f4

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    .line 189
    const v2, 0x10204fc

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    .line 190
    const v0, 0x10204f3

    invoke-virtual {p0, v0}, Landroid/app/SearchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x10204fb

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1080964

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p0, v1}, Landroid/app/SearchDialog;->setWorking(Z)V

    .line 199
    iget-object v0, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 203
    return-void
.end method

.method private greylist-max-o createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 8

    .line 605
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    if-eqz p2, :cond_f

    .line 611
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 613
    :cond_f
    const-string/jumbo p1, "user_query"

    iget-object p2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    if-eqz p4, :cond_1f

    .line 615
    const-string/jumbo p1, "query"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    :cond_1f
    if-eqz p3, :cond_26

    .line 618
    const-string p1, "intent_extra_data_key"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    :cond_26
    iget-object p1, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    if-eqz p1, :cond_31

    .line 621
    const-string p1, "app_data"

    iget-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 623
    :cond_31
    if-eqz p5, :cond_3d

    .line 624
    const-string p1, "action_key"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string p1, "action_msg"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    :cond_3d
    iget-object p1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 628
    return-object v0
.end method

.method private greylist-max-o doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 5

    .line 230
    invoke-direct {p0, p3, p4}, Landroid/app/SearchDialog;->show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 231
    const/4 p1, 0x0

    return p1

    .line 235
    :cond_8
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->setUserQuery(Ljava/lang/String;)V

    .line 236
    if-eqz p2, :cond_12

    .line 237
    iget-object p1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    .line 240
    :cond_12
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist enoughToFilter()Z
    .registers 2

    .line 390
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    .line 391
    if-eqz v0, :cond_18

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_18

    .line 395
    :cond_11
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    return v0

    .line 392
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isEmpty(Landroid/widget/AutoCompleteTextView;)Z
    .registers 2

    .line 657
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method static greylist isLandscapeMode(Landroid/content/Context;)Z
    .registers 2

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private greylist-max-o isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 511
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 512
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 513
    iget-object v1, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 514
    neg-int v2, v1

    if-lt v0, v2, :cond_2a

    if-lt p2, v2, :cond_2a

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_2a

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    if-le p2, p1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p1, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    .line 514
    :goto_2b
    return p1
.end method

.method private greylist-max-o launchIntent(Landroid/content/Intent;)V
    .registers 6

    .line 562
    if-nez p1, :cond_3

    .line 563
    return-void

    .line 565
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :try_start_1c
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 574
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_26} :catch_27

    .line 577
    goto :goto_3e

    .line 575
    :catch_27
    move-exception v0

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    :goto_3e
    return-void
.end method

.method private greylist-max-o onClosePressed()Z
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Landroid/app/SearchDialog;->isEmpty(Landroid/widget/AutoCompleteTextView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 676
    invoke-virtual {p0}, Landroid/app/SearchDialog;->dismiss()V

    .line 677
    const/4 v0, 0x1

    return v0

    .line 680
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static greylist-max-o resolveDialogTheme(Landroid/content/Context;)I
    .registers 4

    .line 116
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x11200e9

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 119
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method private greylist-max-o setUserQuery(Ljava/lang/String;)V
    .registers 3

    .line 720
    if-nez p1, :cond_4

    .line 721
    const-string p1, ""

    .line 723
    :cond_4
    iput-object p1, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 724
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 726
    return-void
.end method

.method private greylist-max-o show(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 5

    .line 255
    iget-object v0, p0, Landroid/app/SearchDialog;->mContext:Landroid/content/Context;

    .line 256
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 258
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    .line 260
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_17

    .line 261
    const/4 p1, 0x0

    return p1

    .line 264
    :cond_17
    iput-object p1, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 265
    iput-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 266
    iget-object p1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    .line 269
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_41

    .line 272
    invoke-direct {p0}, Landroid/app/SearchDialog;->createContentView()V

    .line 273
    iget-object p1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object p2, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 274
    iget-object p1, p0, Landroid/app/SearchDialog;->mSearchView:Landroid/widget/SearchView;

    iget-object p2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setAppSearchData(Landroid/os/Bundle;)V

    .line 276
    invoke-virtual {p0}, Landroid/app/SearchDialog;->show()V

    .line 278
    :cond_41
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateUI()V

    .line 280
    const/4 p1, 0x1

    return p1
.end method

.method private greylist-max-o updateSearchAppIcon()V
    .registers 6

    .line 448
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 451
    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 452
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_15} :catch_16

    .line 458
    goto :goto_35

    .line 455
    :catch_16
    move-exception v2

    .line 456
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found, using generic app icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SearchDialog"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_35
    iget-object v2, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v0, p0, Landroid/app/SearchDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 462
    return-void
.end method

.method private greylist-max-o updateSearchAutoComplete()V
    .registers 3

    .line 443
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownDismissedOnCompletion(Z)V

    .line 444
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setForceIgnoreOutsideTouch(Z)V

    .line 445
    return-void
.end method

.method private greylist-max-o updateSearchBadge()V
    .registers 6

    .line 469
    nop

    .line 470
    nop

    .line 471
    nop

    .line 474
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->useBadgeIcon()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 475
    iget-object v0, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getIconId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 476
    move v3, v1

    move-object v1, v2

    goto :goto_41

    .line 478
    :cond_1c
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->useBadgeLabel()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 479
    iget-object v0, p0, Landroid/app/SearchDialog;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getLabelId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    move v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_41

    .line 478
    :cond_3c
    const/16 v1, 0x8

    move v3, v1

    move-object v0, v2

    move-object v1, v0

    .line 484
    :goto_41
    iget-object v4, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v0, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Landroid/app/SearchDialog;->mBadgeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    return-void
.end method

.method private greylist-max-o updateUI()V
    .registers 4

    .line 402
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_58

    .line 403
    iget-object v0, p0, Landroid/app/SearchDialog;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAutoComplete()V

    .line 405
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 406
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 413
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 416
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 419
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 420
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 421
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 424
    :cond_2d
    iget-object v1, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 425
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    .line 426
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    iget v1, p0, Landroid/app/SearchDialog;->mSearchAutoCompleteImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 430
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 431
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_58

    .line 433
    :cond_52
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 436
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public whitelist hide()V
    .registers 4

    .line 521
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 525
    :cond_7
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 526
    if-eqz v0, :cond_26

    .line 527
    nop

    .line 528
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 527
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 531
    :cond_26
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 532
    return-void
.end method

.method public greylist launchQuerySearch()V
    .registers 3

    .line 539
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/SearchDialog;->launchQuerySearch(ILjava/lang/String;)V

    .line 540
    return-void
.end method

.method protected greylist launchQuerySearch(ILjava/lang/String;)V
    .registers 11

    .line 552
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 553
    nop

    .line 554
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "android.intent.action.SEARCH"

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/app/SearchDialog;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 555
    invoke-direct {p0, p1}, Landroid/app/SearchDialog;->launchIntent(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method public whitelist onBackPressed()V
    .registers 4

    .line 664
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 665
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 666
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 667
    return-void

    .line 670
    :cond_28
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    .line 671
    return-void
.end method

.method public greylist-max-o onConfigurationChanged()V
    .registers 3

    .line 370
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 372
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchAppIcon()V

    .line 373
    invoke-direct {p0}, Landroid/app/SearchDialog;->updateSearchBadge()V

    .line 374
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SearchDialog;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 375
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputMethodMode(I)V

    .line 376
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0}, Landroid/app/SearchDialog;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 377
    :cond_2e
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 381
    :cond_33
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 146
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 150
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 154
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 155
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/SearchDialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 353
    if-nez p1, :cond_3

    return-void

    .line 355
    :cond_3
    const-string v0, "comp"

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 356
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 357
    const-string/jumbo v2, "uQry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 362
    return-void

    .line 364
    :cond_22
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 333
    invoke-virtual {p0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 335
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 338
    const-string v1, "comp"

    iget-object v2, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 339
    const-string v1, "data"

    iget-object v2, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 340
    const-string/jumbo v1, "uQry"

    iget-object v2, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-object v0
.end method

.method public whitelist onStart()V
    .registers 4

    .line 285
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    return-void
.end method

.method public whitelist onStop()V
    .registers 3

    .line 301
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 303
    invoke-virtual {p0}, Landroid/app/SearchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SearchDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchDialog;->mLaunchComponent:Landroid/content/ComponentName;

    .line 307
    iput-object v0, p0, Landroid/app/SearchDialog;->mAppSearchData:Landroid/os/Bundle;

    .line 308
    iput-object v0, p0, Landroid/app/SearchDialog;->mSearchable:Landroid/app/SearchableInfo;

    .line 309
    iput-object v0, p0, Landroid/app/SearchDialog;->mUserQuery:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 501
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchPlate:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Landroid/app/SearchDialog;->isOutOfBounds(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 503
    invoke-virtual {p0}, Landroid/app/SearchDialog;->cancel()V

    .line 504
    const/4 p1, 0x1

    return p1

    .line 507
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o setListSelection(I)V
    .registers 3

    .line 584
    iget-object v0, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 585
    return-void
.end method

.method public greylist setWorking(Z)V
    .registers 5

    .line 320
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const/16 v2, 0xff

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 321
    iget-object v0, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 322
    iget-object p1, p0, Landroid/app/SearchDialog;->mWorkingSpinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 323
    return-void
.end method

.method public greylist-max-o show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 5

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SearchDialog;->doShow(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    .line 213
    if-eqz p1, :cond_b

    .line 216
    iget-object p2, p0, Landroid/app/SearchDialog;->mSearchAutoComplete:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->showDropDownAfterLayout()V

    .line 218
    :cond_b
    return p1
.end method
